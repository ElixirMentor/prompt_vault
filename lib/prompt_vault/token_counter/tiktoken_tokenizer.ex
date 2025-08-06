defmodule PromptVault.TokenCounter.TiktokenTokenizer do
  @moduledoc """
  Token counter implementation using the tiktoken library.

  This implementation uses the tiktoken library to provide accurate token counts
  for OpenAI models. It supports various OpenAI models including GPT-4, GPT-3.5-turbo,
  and other models supported by tiktoken.

  ## Supported Models

  The tokenizer supports model names as both atoms and strings, including:
  - "gpt-4", "gpt-4-0314", "gpt-4-32k", "gpt-4-32k-0314"
  - "gpt-3.5-turbo", "gpt-3.5-turbo-0301"
  - "text-davinci-003", "text-davinci-002", "text-davinci-001"
  - "code-davinci-002"
  - "text-embedding-ada-002"

  ## Examples

      iex> PromptVault.TokenCounter.TiktokenTokenizer.count("gpt-4", "Hello world")
      2

      iex> PromptVault.TokenCounter.TiktokenTokenizer.count(:gpt_4, "Hello world")
      2
  """

  @behaviour PromptVault.TokenCounter

  @impl true
  def count(model, content) do
    content
    |> normalize_content()
    |> count_tokens(normalize_model(model))
  end

  # Normalize content to binary format
  defp normalize_content(content) when is_binary(content), do: content

  defp normalize_content(content) when is_list(content) do
    IO.iodata_to_binary(content)
  end

  defp normalize_content(_content), do: ""

  # Normalize model name to string format expected by tiktoken
  defp normalize_model(model) when is_atom(model) do
    model
    |> Atom.to_string()
    |> String.replace("_", "-")
  end

  defp normalize_model(model) when is_binary(model), do: model

  # Count tokens using tiktoken
  defp count_tokens(content, model) do
    case Tiktoken.encode_ordinary(model, content) do
      {:ok, tokens} -> length(tokens)
      {:error, _} -> 0
    end
  rescue
    # Fall back to 0 if tiktoken fails (e.g., unsupported model)
    _ -> 0
  end
end
