defmodule PromptVaultIntegrationTest do
  use ExUnit.Case, async: true

  alias PromptVault.Compaction.SummarizeHistory

  describe "complete workflow" do
    test "end-to-end usage with all features" do
      # Step 1: Create a context with token counter and compaction strategy
      summarizer = fn messages ->
        user_count = Enum.count(messages, fn msg -> msg.__struct__.role(msg) == :user end)

        assistant_count =
          Enum.count(messages, fn msg -> msg.__struct__.role(msg) == :assistant end)

        "Summary: #{user_count} user messages, #{assistant_count} assistant messages"
      end

      context =
        PromptVault.new(
          model: :gpt4,
          temperature: 0.7,
          max_tokens: 1000,
          token_counter: PromptVault.TokenCounter.PretendTokenizer,
          compaction_strategy: {SummarizeHistory, [summarizer: summarizer]}
        )

      # Verify initial state
      assert context.model == :gpt4
      assert context.temperature == 0.7
      assert context.max_tokens == 1000
      assert context.messages == []
      assert context.token_count == 0

      # Step 2: Add various types of messages
      {:ok, context} =
        PromptVault.add_message(context, :system, "You are a helpful AI assistant.")

      {:ok, context} = PromptVault.add_message(context, :user, "What's the weather like?")

      {:ok, context} =
        PromptVault.add_tool_call(context, :get_weather, %{location: "NYC"}, nil,
          raw: "Calling weather API..."
        )

      {:ok, context} =
        PromptVault.add_message(context, :assistant, "Let me check the weather for you.")

      {:ok, context} =
        PromptVault.add_media(context, "image/jpeg", "weather_map.jpg",
          raw: "Weather map showing current conditions"
        )

      # Verify messages were added correctly
      assert length(context.messages) == 5
      # Should be reset after adding messages
      assert context.token_count == 0

      # Step 3: Render the context
      rendered = PromptVault.render(context)
      rendered_text = IO.iodata_to_binary(rendered)

      assert String.contains?(rendered_text, "You are a helpful AI assistant.")
      assert String.contains?(rendered_text, "What's the weather like?")
      assert String.contains?(rendered_text, "Calling weather API...")
      assert String.contains?(rendered_text, "Let me check the weather for you.")
      assert String.contains?(rendered_text, "Weather map showing current conditions")

      # Step 4: Count tokens
      {:ok, token_count} = PromptVault.token_count(context)
      assert token_count > 0
      assert is_integer(token_count)

      # Test caching - should return the same count
      {:ok, cached_count} = PromptVault.token_count(context)
      assert cached_count == token_count

      # Step 5: Update context with cached tokens
      {:ok, context_with_tokens} = PromptVault.count_and_cache_tokens(context)
      assert context_with_tokens.token_count == token_count

      # Step 6: Compact the context
      {:ok, compacted} = PromptVault.compact(context_with_tokens)

      # Verify compaction results
      # System message + summary
      assert length(compacted.messages) == 2
      # Reset after compaction
      assert compacted.token_count == 0

      [system_msg, summary_msg] = compacted.messages
      assert system_msg.role == :system
      assert system_msg.raw == "You are a helpful AI assistant."

      assert summary_msg.role == :assistant
      assert summary_msg.raw == "Summary: 1 user messages, 1 assistant messages"
      assert summary_msg.assigns == %{summary: true}

      # Step 7: Continue adding messages to compacted context
      {:ok, final_context} =
        PromptVault.add_message(compacted, :user, "Thanks for the weather info!")

      assert length(final_context.messages) == 3
      # Reset after adding message
      assert final_context.token_count == 0

      # Step 8: Render final context
      final_rendered = PromptVault.render(final_context)
      final_text = IO.iodata_to_binary(final_rendered)

      assert String.contains?(final_text, "You are a helpful AI assistant.")
      assert String.contains?(final_text, "Summary: 1 user messages, 1 assistant messages")
      assert String.contains?(final_text, "Thanks for the weather info!")

      # Should not contain original conversation details
      refute String.contains?(final_text, "What's the weather like?")
      refute String.contains?(final_text, "Calling weather API...")
    end

    test "handles empty context gracefully" do
      context = PromptVault.new()

      # Render empty context
      assert PromptVault.render(context) == []

      # Token counting without counter
      assert PromptVault.token_count(context) == {:error, :token_counter_not_set}

      # Compaction without strategy
      assert PromptVault.compact(context) == {:error, :no_compaction_strategy}
    end

    test "pipe-friendly API usage" do
      result =
        PromptVault.new(
          token_counter: PromptVault.TokenCounter.PretendTokenizer,
          compaction_strategy: SummarizeHistory
        )
        |> PromptVault.add_message(:system, "You are helpful")
        |> case do
          {:ok, ctx} -> PromptVault.add_message(ctx, :user, "Hello")
        end
        |> case do
          {:ok, ctx} -> PromptVault.add_message(ctx, :assistant, "Hi there!")
        end
        |> case do
          {:ok, ctx} -> PromptVault.compact(ctx, nil, summarizer: fn _ -> "Summary" end)
        end

      {:ok, final_context} = result
      # System + summary
      assert length(final_context.messages) == 2
    end

    test "template integration when engine is provided" do
      context = PromptVault.new()

      # Add message with EEx template
      {:ok, context} =
        PromptVault.add_message(
          context,
          :user,
          "Hello <%= assigns.name %>!",
          engine: :eex,
          template: {:inline, "Hello <%= assigns.name %>!"},
          assigns: %{name: "World"}
        )

      # Render should process the template
      rendered = PromptVault.render(context, %{name: "Alice"})
      rendered_text = IO.iodata_to_binary(rendered)

      # The rendered result should use merged assigns (Alice overrides World)
      assert rendered_text == "Hello Alice!"
    end

    test "error handling throughout the workflow" do
      context = PromptVault.new()

      # Invalid role
      assert {:error, {:invalid_role, :invalid}} =
               PromptVault.add_message(context, :invalid, "test")

      # Invalid tool args
      assert {:error, {:invalid_args, "not a map"}} =
               PromptVault.add_tool_call(context, :tool, "not a map", nil)

      # Invalid media types
      assert {:error, {:invalid_mime_type, 123}} =
               PromptVault.add_media(context, 123, "url")

      assert {:error, {:invalid_url, 456}} =
               PromptVault.add_media(context, "image/jpeg", 456)
    end
  end
end
