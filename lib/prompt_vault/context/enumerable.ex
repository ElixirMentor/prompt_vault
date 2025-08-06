defmodule PromptVault.Context.Enumerable do
  @moduledoc """
  Implements the Enumerable protocol for PromptVault.Context.

  This allows a PromptVault.Context to be used directly with LangChain functions
  that expect an enumerable of messages, such as LangChain.Chains.LLMChain.add_messages/2.

  ## Example

      context = 
        PromptVault.new()
        |> PromptVault.add_message!(:system, "You are helpful")
        |> PromptVault.add_message!(:user, "Hello!")

      # Pass context directly to LangChain
      llm = LangChain.ChatModels.ChatOpenAI.new!()
      
      chain = 
        LangChain.Chains.LLMChain.new!(%{llm: llm})
        |> LangChain.Chains.LLMChain.add_messages(context)  # Context used directly!

  """

  alias PromptVault.Context
  alias PromptVault.Message.{PromptMessage, ToolCallMessage, MediaMessage}

  defimpl Enumerable, for: Context do
    @doc """
    Converts PromptVault.Context to LangChain.Message structs for enumeration.

    This enables passing a PromptVault context directly to LangChain functions
    that expect an enumerable of messages.
    """
    def count(%Context{messages: messages}) do
      {:ok, length(messages)}
    end

    def member?(%Context{messages: messages}, element) do
      converted_messages = convert_messages(messages)
      {:ok, element in converted_messages}
    end

    def slice(%Context{messages: messages}) do
      converted_messages = convert_messages(messages)
      size = length(converted_messages)

      {:ok, size,
       fn start, slice_length, step ->
         converted_messages
         |> Enum.slice(start, slice_length)
         |> Enum.take_every(step)
       end}
    end

    def reduce(%Context{messages: messages}, acc, fun) do
      converted_messages = convert_messages(messages)
      Enumerable.List.reduce(converted_messages, acc, fun)
    end

    # Private function to convert PromptVault messages to LangChain messages
    defp convert_messages(messages) do
      messages
      |> Enum.map(&convert_message/1)
      |> Enum.reject(&is_nil/1)
    end

    defp convert_message(%PromptMessage{} = message) do
      content = message.__struct__.rendered(message, %{}) |> IO.iodata_to_binary()

      try do
        case message.role do
          :system -> apply(LangChain.Message, :new_system!, [content])
          :user -> apply(LangChain.Message, :new_user!, [content])
          :assistant -> apply(LangChain.Message, :new_assistant!, [content])
          _ -> nil
        end
      rescue
        _ -> nil
      end
    end

    defp convert_message(%ToolCallMessage{} = message) do
      # Tool call messages are more complex and may need special handling
      # For now, convert to assistant message with tool call information
      content = message.__struct__.rendered(message, %{}) |> IO.iodata_to_binary()

      try do
        apply(LangChain.Message, :new_assistant!, [content])
      rescue
        _ -> nil
      end
    end

    defp convert_message(%MediaMessage{} = message) do
      # Media messages need special handling for multimodal models
      # For now, convert to user message with media information
      content = message.__struct__.rendered(message, %{}) |> IO.iodata_to_binary()

      try do
        apply(LangChain.Message, :new_user!, [content])
      rescue
        _ -> nil
      end
    end

    defp convert_message(_), do: nil
  end
end
