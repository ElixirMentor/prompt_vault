defmodule PromptVault.LangChain do
  @moduledoc """
  Helper module for LangChain integration.

  PromptVault.Context implements the Enumerable protocol, allowing contexts to be
  passed directly to LangChain functions. This module provides additional helper
  functions for converting between PromptVault and LangChain formats.

  ## Usage

  The primary way to use PromptVault with LangChain is to pass contexts directly:

      context = 
        PromptVault.new()
        |> PromptVault.add_message!(:system, "You are helpful")
        |> PromptVault.add_message!(:user, "Hello!")

      # Pass context directly to LangChain
      llm = LangChain.ChatModels.ChatOpenAI.new!()
      
      chain = 
        LangChain.Chains.LLMChain.new!(%{llm: llm})
        |> LangChain.Chains.LLMChain.add_messages(context)  # Context used directly!
        |> LangChain.Chains.LLMChain.run()

  """

  alias PromptVault.Context
  alias PromptVault.Message.PromptMessage

  @doc """
  Converts LangChain messages back to PromptVault context.

  This allows you to take the result of a LangChain execution and
  convert it back to a PromptVault context for further processing.

  ## Examples

      # After running LangChain
      messages = chain.messages
      {:ok, context} = PromptVault.LangChain.from_langchain_messages(messages)

  """
  @spec from_langchain_messages([any()], Context.t() | nil) ::
          {:ok, Context.t()} | {:error, any()}
  def from_langchain_messages(messages, base_context \\ nil) do
    context = base_context || PromptVault.new()

    try do
      updated_context =
        Enum.reduce(messages, context, fn message, acc ->
          case convert_from_langchain_message(message) do
            {:ok, prompt_message} ->
              %{acc | messages: acc.messages ++ [prompt_message]}

            {:error, _reason} ->
              acc
          end
        end)

      {:ok, updated_context}
    rescue
      error -> {:error, error}
    end
  end

  # Private functions

  @spec convert_from_langchain_message(any()) ::
          {:ok, PromptMessage.t()} | {:error, any()}
  defp convert_from_langchain_message(message) do
    # Only process if it's a map with required fields
    if is_map(message) and Map.has_key?(message, :role) and Map.has_key?(message, :content) do
      role =
        case Map.get(message, :role) do
          :system -> :system
          :user -> :user
          :assistant -> :assistant
          _ -> :user
        end

      prompt_message = %PromptMessage{
        role: role,
        raw: Map.get(message, :content, ""),
        template: nil,
        engine: nil,
        assigns: %{}
      }

      {:ok, prompt_message}
    else
      {:error, :invalid_message}
    end
  rescue
    _ -> {:error, :invalid_message}
  end
end
