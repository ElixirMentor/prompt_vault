defmodule PromptVault.LangChainTest do
  use ExUnit.Case, async: true

  alias PromptVault.LangChain

  doctest PromptVault.LangChain

  describe "from_langchain_messages/2" do
    test "converts empty list to empty context" do
      {:ok, context} = LangChain.from_langchain_messages([])
      assert context.messages == []
    end

    test "converts LangChain messages to PromptVault context" do
      # Mock LangChain message structures
      langchain_messages = [
        %{role: :system, content: "You are helpful"},
        %{role: :user, content: "Hello"},
        %{role: :assistant, content: "Hi there!"}
      ]

      {:ok, context} = LangChain.from_langchain_messages(langchain_messages)
      assert length(context.messages) == 3

      [system_msg, user_msg, assistant_msg] = context.messages

      assert system_msg.role == :system
      assert system_msg.raw == "You are helpful"

      assert user_msg.role == :user
      assert user_msg.raw == "Hello"

      assert assistant_msg.role == :assistant
      assert assistant_msg.raw == "Hi there!"
    end

    test "uses base context when provided" do
      base_context = PromptVault.new(model: :gpt4, temperature: 0.7)

      {:ok, context} = LangChain.from_langchain_messages([], base_context)

      assert context.model == :gpt4
      assert context.temperature == 0.7
    end

    test "handles invalid message format gracefully" do
      invalid_messages = [
        %{invalid: "structure"},
        "not a map",
        nil
      ]

      {:ok, context} = LangChain.from_langchain_messages(invalid_messages)
      # Invalid messages should be skipped
      assert context.messages == []
    end
  end

  describe "context as enumerable for LangChain" do
    test "context can be enumerated as LangChain messages" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:system, "You are helpful")
        |> PromptVault.add_message!(:user, "Hello!")

      # Simulate what LangChain.Chains.LLMChain.add_messages would do
      messages = Enum.to_list(context)

      assert length(messages) == 2

      [system_msg, user_msg] = messages

      assert system_msg.role == :system
      assert system_msg.content == "You are helpful"

      assert user_msg.role == :user
      assert user_msg.content == "Hello!"
    end

    test "empty context enumerates to empty list" do
      context = PromptVault.new()
      messages = Enum.to_list(context)
      assert messages == []
    end

    test "context works with standard Enum functions" do
      context =
        PromptVault.new()
        |> PromptVault.add_message!(:user, "Hello")
        |> PromptVault.add_message!(:assistant, "Hi!")
        |> PromptVault.add_message!(:user, "How are you?")

      # Count
      assert Enum.count(context) == 3

      # Filter
      user_messages = Enum.filter(context, &(&1.role == :user))
      assert length(user_messages) == 2

      # Map
      contents = Enum.map(context, & &1.content)
      assert contents == ["Hello", "Hi!", "How are you?"]
    end
  end

  describe "integration demonstration" do
    @tag :skip
    test "demonstrates intended LangChain usage" do
      # This test demonstrates the intended API but is skipped
      # since it requires actual LangChain integration

      context =
        PromptVault.new()
        |> PromptVault.add_message!(:system, "You are helpful")
        |> PromptVault.add_message!(:user, "Hello!")

      # This is how it would work with actual LangChain:
      # llm = LangChain.ChatModels.ChatOpenAI.new!()
      #
      # chain =
      #   LangChain.Chains.LLMChain.new!(%{llm: llm})
      #   |> LangChain.Chains.LLMChain.add_messages(context)  # Context used directly!
      #   |> LangChain.Chains.LLMChain.run()

      # For now, just verify the context is enumerable
      messages = Enum.to_list(context)
      assert length(messages) == 2
    end
  end

  describe "error handling" do
    test "handles conversion errors gracefully" do
      # Test with invalid message in context
      invalid_message = %{some_field: "value"}
      context = %PromptVault.Context{messages: [invalid_message]}

      # Should not crash and should filter out invalid messages
      messages = Enum.to_list(context)
      assert messages == []
    end

    test "handles LangChain module not available" do
      # The enumerable implementation should gracefully handle
      # when LangChain modules are not available
      context = PromptVault.new() |> PromptVault.add_message!(:user, "Hello")

      # Should not crash
      result = Enum.to_list(context)
      assert is_list(result)
    end
  end
end
