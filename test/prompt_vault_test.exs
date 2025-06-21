defmodule PromptVaultTest do
  use ExUnit.Case
  doctest PromptVault

  alias PromptVault.Message.{PromptMessage, ToolCallMessage, MediaMessage}

  test "creates new context" do
    context = PromptVault.new()
    assert %PromptVault.Context{} = context
  end

  describe "add_message/4" do
    test "adds a valid message" do
      context = PromptVault.new()
      {:ok, updated} = PromptVault.add_message(context, :user, "Hello world")

      assert length(updated.messages) == 1
      message = List.first(updated.messages)
      assert %PromptMessage{} = message
      assert message.role == :user
      assert message.raw == "Hello world"
      assert message.template == nil
      assert message.engine == nil
      assert message.assigns == %{}
    end

    test "adds message with options" do
      context = PromptVault.new()

      opts = [
        template: {:inline, "Hello {{name}}"},
        engine: :eex,
        assigns: %{name: "Alice"}
      ]

      {:ok, updated} = PromptVault.add_message(context, :assistant, "Hello Alice", opts)

      message = List.first(updated.messages)
      assert message.template == {:inline, "Hello {{name}}"}
      assert message.engine == :eex
      assert message.assigns == %{name: "Alice"}
    end

    test "resets token count when adding message" do
      context = PromptVault.new() |> Map.put(:token_count, 100)
      {:ok, updated} = PromptVault.add_message(context, :user, "test")

      assert updated.token_count == 0
    end

    test "validates role" do
      context = PromptVault.new()

      assert {:error, {:invalid_role, :invalid}} =
               PromptVault.add_message(context, :invalid, "test")

      assert {:error, {:invalid_role, "user"}} =
               PromptVault.add_message(context, "user", "test")
    end

    test "accepts all valid roles" do
      context = PromptVault.new()

      {:ok, context} = PromptVault.add_message(context, :system, "system msg")
      {:ok, context} = PromptVault.add_message(context, :user, "user msg")
      {:ok, context} = PromptVault.add_message(context, :assistant, "assistant msg")

      assert length(context.messages) == 3
      roles = Enum.map(context.messages, fn msg -> msg.role end)
      assert roles == [:system, :user, :assistant]
    end

    test "preserves message order" do
      context = PromptVault.new()

      {:ok, context} = PromptVault.add_message(context, :system, "first")
      {:ok, context} = PromptVault.add_message(context, :user, "second")
      {:ok, context} = PromptVault.add_message(context, :assistant, "third")

      messages = Enum.map(context.messages, fn msg -> msg.raw end)
      assert messages == ["first", "second", "third"]
    end

    test "supports piping multiple messages" do
      result =
        PromptVault.new()
        |> PromptVault.add_message(:system, "You are helpful")
        |> case do
          {:ok, context} -> PromptVault.add_message(context, :user, "Hello")
        end
        |> case do
          {:ok, context} -> PromptVault.add_message(context, :assistant, "Hi there!")
        end

      {:ok, context} = result
      assert length(context.messages) == 3
    end
  end

  describe "add_tool_call/5" do
    test "adds a valid tool call message" do
      context = PromptVault.new()
      args = %{city: "New York", units: "celsius"}
      schema = %{type: "object", properties: %{temp: %{type: "number"}}}

      {:ok, updated} = PromptVault.add_tool_call(context, :weather, args, schema)

      assert length(updated.messages) == 1
      message = List.first(updated.messages)
      assert %ToolCallMessage{} = message
      assert message.role == :tool
      assert message.tool == :weather
      assert message.args == args
      assert message.response_schema == schema
    end

    test "adds tool call with options" do
      context = PromptVault.new()

      opts = [
        raw: "Getting weather",
        template: {:inline, "Weather for {{city}}"},
        engine: :eex,
        assigns: %{city: "NYC"}
      ]

      {:ok, updated} =
        PromptVault.add_tool_call(context, "weather_api", %{city: "NYC"}, nil, opts)

      message = List.first(updated.messages)
      assert message.raw == "Getting weather"
      assert message.template == {:inline, "Weather for {{city}}"}
      assert message.engine == :eex
      assert message.assigns == %{city: "NYC"}
    end

    test "validates args is a map" do
      context = PromptVault.new()

      assert {:error, {:invalid_args, []}} =
               PromptVault.add_tool_call(context, :weather, [], nil)

      assert {:error, {:invalid_args, "not a map"}} =
               PromptVault.add_tool_call(context, :weather, "not a map", nil)
    end

    test "accepts different tool name types" do
      context = PromptVault.new()

      {:ok, context} = PromptVault.add_tool_call(context, :atom_tool, %{}, nil)
      {:ok, context} = PromptVault.add_tool_call(context, "string_tool", %{}, nil)

      assert length(context.messages) == 2
      [msg1, msg2] = context.messages
      assert msg1.tool == :atom_tool
      assert msg2.tool == "string_tool"
    end

    test "resets token count" do
      context = PromptVault.new() |> Map.put(:token_count, 50)
      {:ok, updated} = PromptVault.add_tool_call(context, :test, %{}, nil)

      assert updated.token_count == 0
    end
  end

  describe "add_media/4" do
    test "adds a valid media message" do
      context = PromptVault.new()
      mime_type = "image/jpeg"
      url = "https://example.com/image.jpg"

      {:ok, updated} = PromptVault.add_media(context, mime_type, url)

      assert length(updated.messages) == 1
      message = List.first(updated.messages)
      assert %MediaMessage{} = message
      assert message.role == :media
      assert message.mime_type == mime_type
      assert message.url == url
      assert message.size == nil
    end

    test "adds media with options" do
      context = PromptVault.new()

      opts = [
        size: 1024,
        raw: "A beautiful sunset",
        template: {:inline, "Image: {{description}}"},
        engine: :eex,
        assigns: %{description: "sunset"}
      ]

      {:ok, updated} = PromptVault.add_media(context, "image/png", "test.png", opts)

      message = List.first(updated.messages)
      assert message.size == 1024
      assert message.raw == "A beautiful sunset"
      assert message.template == {:inline, "Image: {{description}}"}
      assert message.engine == :eex
      assert message.assigns == %{description: "sunset"}
    end

    test "validates mime_type is string" do
      context = PromptVault.new()

      assert {:error, {:invalid_mime_type, :image}} =
               PromptVault.add_media(context, :image, "test.jpg")

      assert {:error, {:invalid_mime_type, 123}} =
               PromptVault.add_media(context, 123, "test.jpg")
    end

    test "validates url is string" do
      context = PromptVault.new()

      assert {:error, {:invalid_url, :url}} =
               PromptVault.add_media(context, "image/jpeg", :url)

      assert {:error, {:invalid_url, 456}} =
               PromptVault.add_media(context, "image/jpeg", 456)
    end

    test "accepts various URL formats" do
      context = PromptVault.new()

      {:ok, context} = PromptVault.add_media(context, "image/jpeg", "http://example.com/img.jpg")

      {:ok, context} =
        PromptVault.add_media(context, "image/png", "https://secure.example.com/img.png")

      {:ok, context} =
        PromptVault.add_media(context, "image/gif", "data:image/gif;base64,R0lGOD...")

      assert length(context.messages) == 3
    end

    test "resets token count" do
      context = PromptVault.new() |> Map.put(:token_count, 75)
      {:ok, updated} = PromptVault.add_media(context, "image/jpeg", "test.jpg")

      assert updated.token_count == 0
    end
  end

  describe "render/2" do
    test "renders empty context" do
      context = PromptVault.new()
      assert PromptVault.render(context) == []
    end

    test "renders single message without template" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :user, "Hello world")

      rendered = PromptVault.render(context)
      assert IO.iodata_to_binary(rendered) == "Hello world"
    end

    test "renders multiple messages in order" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :system, "You are helpful")
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")
      {:ok, context} = PromptVault.add_message(context, :assistant, "Hi there!")

      rendered = PromptVault.render(context)
      binary_result = IO.iodata_to_binary(rendered)

      assert String.contains?(binary_result, "You are helpful")
      assert String.contains?(binary_result, "Hello")
      assert String.contains?(binary_result, "Hi there!")
    end

    test "renders mixed message types" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :user, "Show me weather")

      {:ok, context} =
        PromptVault.add_tool_call(context, :weather, %{city: "NYC"}, nil,
          raw: "Getting weather..."
        )

      {:ok, context} =
        PromptVault.add_media(context, "image/jpeg", "weather.jpg", raw: "Weather chart")

      rendered = PromptVault.render(context)
      binary_result = IO.iodata_to_binary(rendered)

      assert String.contains?(binary_result, "Show me weather")
      assert String.contains?(binary_result, "Getting weather...")
      assert String.contains?(binary_result, "Weather chart")
    end

    test "passes assigns to messages" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")

      # This will render without templates, so assigns won't affect output
      rendered1 = PromptVault.render(context, %{name: "Alice"})
      rendered2 = PromptVault.render(context, %{name: "Bob"})

      assert rendered1 == rendered2
    end
  end

  describe "token_count/1" do
    test "returns error when no token counter configured" do
      context = PromptVault.new()
      assert PromptVault.token_count(context) == {:error, :token_counter_not_set}
    end

    test "returns cached count when available" do
      context = PromptVault.new(token_counter: PromptVault.TokenCounter.PretendTokenizer)
      context_with_cache = %{context | token_count: 42}

      assert PromptVault.token_count(context_with_cache) == {:ok, 42}
    end

    test "counts tokens using configured counter" do
      context = PromptVault.new(token_counter: PromptVault.TokenCounter.PretendTokenizer)
      {:ok, context} = PromptVault.add_message(context, :user, "Hello world")

      {:ok, count} = PromptVault.token_count(context)
      assert count >= 0
      assert is_integer(count)
    end
  end

  describe "count_and_cache_tokens/1" do
    test "returns error when no token counter configured" do
      context = PromptVault.new()
      assert PromptVault.count_and_cache_tokens(context) == {:error, :token_counter_not_set}
    end

    test "counts and caches tokens" do
      context = PromptVault.new(token_counter: PromptVault.TokenCounter.PretendTokenizer)
      {:ok, context} = PromptVault.add_message(context, :user, "Hello world")

      assert context.token_count == 0
      {:ok, updated_context} = PromptVault.count_and_cache_tokens(context)

      assert updated_context.token_count > 0
      assert is_integer(updated_context.token_count)
    end

    test "works with multiple messages" do
      context = PromptVault.new(token_counter: PromptVault.TokenCounter.PretendTokenizer)
      {:ok, context} = PromptVault.add_message(context, :system, "You are helpful")
      {:ok, context} = PromptVault.add_message(context, :user, "Hello there!")

      {:ok, updated_context} = PromptVault.count_and_cache_tokens(context)

      assert updated_context.token_count > 0
    end
  end

  describe "compact/3" do
    test "returns error when no compaction strategy configured" do
      context = PromptVault.new()
      assert PromptVault.compact(context) == {:error, :no_compaction_strategy}
    end

    test "uses configured compaction strategy" do
      summarizer = fn messages -> "Summary of #{length(messages)} messages" end
      strategy = {PromptVault.Compaction.SummarizeHistory, [summarizer: summarizer]}

      context = PromptVault.new(compaction_strategy: strategy)
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")
      {:ok, context} = PromptVault.add_message(context, :assistant, "Hi there!")

      {:ok, compacted} = PromptVault.compact(context)

      assert length(compacted.messages) == 1
      message = List.first(compacted.messages)
      assert message.role == :assistant
      assert message.raw == "Summary of 2 messages"
      assert message.assigns == %{summary: true}
    end

    test "uses explicit strategy overriding configured one" do
      configured_summarizer = fn _msgs -> "Configured summary" end
      explicit_summarizer = fn messages -> "Explicit summary of #{length(messages)}" end

      context =
        PromptVault.new(
          compaction_strategy:
            {PromptVault.Compaction.SummarizeHistory, [summarizer: configured_summarizer]}
        )

      {:ok, context} = PromptVault.add_message(context, :user, "Hello")

      {:ok, compacted} =
        PromptVault.compact(
          context,
          PromptVault.Compaction.SummarizeHistory,
          summarizer: explicit_summarizer
        )

      message = List.first(compacted.messages)
      assert message.raw == "Explicit summary of 1"
    end

    test "merges default options with provided options" do
      default_summarizer = fn _msgs -> "Default" end
      override_summarizer = fn messages -> "Override: #{length(messages)}" end

      strategy =
        {PromptVault.Compaction.SummarizeHistory,
         [
           summarizer: default_summarizer,
           other_option: "default"
         ]}

      context = PromptVault.new(compaction_strategy: strategy)
      {:ok, context} = PromptVault.add_message(context, :user, "Test")

      {:ok, compacted} = PromptVault.compact(context, nil, summarizer: override_summarizer)

      message = List.first(compacted.messages)
      assert message.raw == "Override: 1"
    end

    test "resets token count after compaction" do
      summarizer = fn _msgs -> "Summary" end

      context =
        PromptVault.new(
          compaction_strategy: PromptVault.Compaction.SummarizeHistory,
          token_counter: PromptVault.TokenCounter.PretendTokenizer
        )

      {:ok, context} = PromptVault.add_message(context, :user, "Hello")
      {:ok, context} = PromptVault.count_and_cache_tokens(context)

      assert context.token_count > 0

      {:ok, compacted} = PromptVault.compact(context, nil, summarizer: summarizer)

      assert compacted.token_count == 0
    end
  end
end
