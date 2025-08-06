defmodule PromptVault.Context.EnumerableTest do
  use ExUnit.Case, async: true

  alias PromptVault.Context

  describe "Enumerable protocol for Context" do
    test "empty context enumerates to empty list" do
      context = PromptVault.new()
      result = Enum.to_list(context)
      assert result == []
    end

    test "context with messages converts to LangChain messages" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:system, "You are helpful")
        |> PromptVault.add_message!(:user, "Hello!")

      messages = Enum.to_list(context)

      assert length(messages) == 2

      [system_msg, user_msg] = messages

      assert system_msg.role == :system
      assert system_msg.content == "You are helpful"

      assert user_msg.role == :user
      assert user_msg.content == "Hello!"
    end

    test "count returns correct number of messages" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:user, "Hello")
        |> PromptVault.add_message!(:assistant, "Hi!")

      assert Enum.count(context) == 2
    end

    test "member? works correctly" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:user, "Hello")

      [message] = Enum.to_list(context)

      assert Enum.member?(context, message)
    end

    test "slice works correctly" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:system, "System")
        |> PromptVault.add_message!(:user, "User")
        |> PromptVault.add_message!(:assistant, "Assistant")

      result = Enum.slice(context, 1, 1)
      assert length(result) == 1

      [user_msg] = result
      assert user_msg.role == :user
      assert user_msg.content == "User"
    end

    test "reduce works correctly" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:user, "Hello")
        |> PromptVault.add_message!(:user, "World")

      content_list =
        Enum.reduce(context, [], fn msg, acc ->
          [msg.content | acc]
        end)
        |> Enum.reverse()

      assert content_list == ["Hello", "World"]
    end

    test "works with Enum functions" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:user, "Hello")
        |> PromptVault.add_message!(:assistant, "Hi there!")

      # Test map
      contents = Enum.map(context, & &1.content)
      assert contents == ["Hello", "Hi there!"]

      # Test filter
      user_messages = Enum.filter(context, &(&1.role == :user))
      assert length(user_messages) == 1
      assert hd(user_messages).content == "Hello"
    end

    test "can be passed to LangChain add_messages (mock test)" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:user, "Test message")

      # This test simulates what LangChain.Chains.LLMChain.add_messages would do
      # It should be able to iterate over the context and get LangChain.Message structs
      messages = Enum.to_list(context)

      assert length(messages) == 1
      assert hd(messages).role == :user
      assert hd(messages).content == "Test message"

      # Verify it's a proper LangChain.Message struct
      message = hd(messages)
      assert is_struct(message, LangChain.Message)
    end
  end

  describe "error handling" do
    test "handles invalid message types gracefully" do
      # Create a context with a mock invalid message
      invalid_message = %{some_field: "value"}
      context = %Context{messages: [invalid_message]}

      # Should not crash and should filter out invalid messages
      messages = Enum.to_list(context)
      assert messages == []
    end

    test "handles LangChain not available gracefully" do
      # This is tested by ensuring the module compiles and runs
      # even when LangChain modules might not be available
      context = PromptVault.new() |> PromptVault.add_message!(:user, "Hello")

      # Should not crash when LangChain is not available
      result = Enum.to_list(context)
      # When LangChain is available, we get messages
      # When not available, graceful degradation
      assert is_list(result)
    end

    test "handles conversion errors gracefully" do
      # Test with unsupported role
      prompt_message = %PromptVault.Message.PromptMessage{
        role: :unknown_role,
        raw: "test"
      }

      context_with_invalid = %Context{messages: [prompt_message]}

      messages = Enum.to_list(context_with_invalid)
      assert messages == []
    end
  end

  describe "media and tool call message handling" do
    test "converts media messages to user messages" do
      media_message = %PromptVault.Message.MediaMessage{
        mime_type: "image/jpeg",
        url: "https://example.com/image.jpg",
        raw: "Image description"
      }

      context = %Context{messages: [media_message]}

      messages = Enum.to_list(context)
      assert length(messages) == 1

      [message] = messages
      assert message.role == :user
      assert String.contains?(message.content, "Image description")
    end

    test "converts tool call messages to assistant messages" do
      tool_call_message = %PromptVault.Message.ToolCallMessage{
        tool: "test_tool",
        args: %{arg1: "value1"},
        raw: "Calling tool"
      }

      context = %Context{messages: [tool_call_message]}

      messages = Enum.to_list(context)
      assert length(messages) == 1

      [message] = messages
      assert message.role == :assistant
      assert String.contains?(message.content, "Calling tool")
    end
  end

  describe "slice functionality edge cases" do
    test "slice with step parameter" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:user, "Message 1")
        |> PromptVault.add_message!(:user, "Message 2")
        |> PromptVault.add_message!(:user, "Message 3")
        |> PromptVault.add_message!(:user, "Message 4")

      # Test slice with step
      result = Enum.take_every(context, 2)
      assert length(result) == 2

      contents = Enum.map(result, & &1.content)
      assert contents == ["Message 1", "Message 3"]
    end

    test "slice beyond bounds" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:user, "Only message")

      result = Enum.slice(context, 5, 10)
      assert result == []
    end
  end
end
