defmodule PromptVault.Compaction.SummarizeHistoryTest do
  use ExUnit.Case, async: true

  alias PromptVault.Compaction.SummarizeHistory

  describe "compact/2" do
    test "returns error when no summarizer provided" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")

      assert SummarizeHistory.compact(context, []) == {:error, :no_summarizer}
    end

    test "returns error when invalid summarizer provided" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")

      assert SummarizeHistory.compact(context, summarizer: "not a function") ==
               {:error, {:invalid_summarizer, "not a function"}}
    end

    test "returns context unchanged when no messages" do
      context = PromptVault.new()
      summarizer = fn _msgs -> "Summary" end

      {:ok, result} = SummarizeHistory.compact(context, summarizer: summarizer)

      assert result == context
      assert length(result.messages) == 0
    end

    test "returns context unchanged when only system messages" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :system, "You are helpful")
      summarizer = fn _msgs -> "Summary" end

      {:ok, result} = SummarizeHistory.compact(context, summarizer: summarizer)

      assert length(result.messages) == 1
      assert List.first(result.messages).role == :system
    end

    test "preserves system message and adds summary" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :system, "You are helpful")
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")
      {:ok, context} = PromptVault.add_message(context, :assistant, "Hi there!")

      summarizer = fn messages ->
        user_messages = Enum.filter(messages, fn msg -> msg.role == :user end)
        "Summary: #{length(user_messages)} user messages"
      end

      {:ok, result} = SummarizeHistory.compact(context, summarizer: summarizer)

      assert length(result.messages) == 2
      [system_msg, summary_msg] = result.messages

      assert system_msg.role == :system
      assert system_msg.raw == "You are helpful"

      assert summary_msg.role == :assistant
      assert summary_msg.raw == "Summary: 1 user messages"
      assert summary_msg.assigns == %{summary: true}
    end

    test "works without system messages" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")
      {:ok, context} = PromptVault.add_message(context, :assistant, "Hi!")
      {:ok, context} = PromptVault.add_message(context, :user, "How are you?")

      summarizer = fn messages -> "Summary of #{length(messages)} messages" end

      {:ok, result} = SummarizeHistory.compact(context, summarizer: summarizer)

      assert length(result.messages) == 1
      message = List.first(result.messages)

      assert message.role == :assistant
      assert message.raw == "Summary of 3 messages"
      assert message.assigns == %{summary: true}
    end

    test "preserves multiple system messages" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :system, "You are helpful")
      {:ok, context} = PromptVault.add_message(context, :system, "Be concise")
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")

      summarizer = fn _messages -> "Brief summary" end

      {:ok, result} = SummarizeHistory.compact(context, summarizer: summarizer)

      assert length(result.messages) == 3
      system_messages = Enum.filter(result.messages, fn msg -> msg.role == :system end)

      summary_messages =
        Enum.filter(result.messages, fn msg ->
          msg.role == :assistant && Map.get(msg.assigns, :summary)
        end)

      assert length(system_messages) == 2
      assert length(summary_messages) == 1
    end

    test "resets token count to 0" do
      context = PromptVault.new()
      context = %{context | token_count: 100}
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")

      summarizer = fn _messages -> "Summary" end

      {:ok, result} = SummarizeHistory.compact(context, summarizer: summarizer)

      assert result.token_count == 0
    end

    test "handles summarizer errors" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")

      failing_summarizer = fn _messages ->
        raise "Summarizer failed!"
      end

      assert {:error, {:summarizer_error, %RuntimeError{message: "Summarizer failed!"}}} =
               SummarizeHistory.compact(context, summarizer: failing_summarizer)
    end

    test "passes all non-system messages to summarizer" do
      context = PromptVault.new()
      {:ok, context} = PromptVault.add_message(context, :system, "You are helpful")
      {:ok, context} = PromptVault.add_message(context, :user, "Hello")
      {:ok, context} = PromptVault.add_message(context, :assistant, "Hi!")
      {:ok, context} = PromptVault.add_tool_call(context, :weather, %{}, nil)
      {:ok, context} = PromptVault.add_media(context, "image/jpeg", "test.jpg")

      summarizer = fn messages ->
        roles = Enum.map(messages, fn msg -> msg.__struct__.role(msg) end)
        "Roles: #{Enum.join(roles, ", ")}"
      end

      {:ok, result} = SummarizeHistory.compact(context, summarizer: summarizer)

      summary_message =
        Enum.find(result.messages, fn msg ->
          Map.get(msg.assigns, :summary)
        end)

      assert String.contains?(summary_message.raw, "user")
      assert String.contains?(summary_message.raw, "assistant")
      assert String.contains?(summary_message.raw, "tool")
      assert String.contains?(summary_message.raw, "media")
      refute String.contains?(summary_message.raw, "system")
    end
  end
end
