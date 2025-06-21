defmodule PromptVault.TokenCounter.Tiktoken do
  @moduledoc """
  Token counter implementation using the optional Tiktoken library.

  This implementation checks if Tiktoken is available at runtime.
  If not available, it falls back to a simple byte-based estimation.
  """

  @behaviour PromptVault.TokenCounter

  @impl true
  def count(model, content) do
    if Code.ensure_loaded?(Tiktoken) do
      try do
        Tiktoken.count(model, content)
      rescue
        _error ->
          fallback_count(content)
      end
    else
      fallback_count(content)
    end
  end

  # Simple fallback: estimate 1 token per 4 characters
  defp fallback_count(content) when is_binary(content) do
    div(byte_size(content), 4)
  end

  defp fallback_count(content) when is_list(content) do
    content
    |> IO.iodata_to_binary()
    |> fallback_count()
  end

  defp fallback_count(_content), do: 0
end
