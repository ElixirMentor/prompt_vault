defmodule PromptVault.TokenCounter.PretendTokenizer do
  @moduledoc """
  Token counter implementation using the fnord library.

  This implementation uses AI.PretendTokenizer.guesstimate_tokens/1 from the fnord package
  to provide token count estimates.
  """

  @behaviour PromptVault.TokenCounter

  @impl true
  def count(_model, content) do
    content
    |> normalize_content()
    |> AI.PretendTokenizer.guesstimate_tokens()
  end

  # Normalize content to binary format
  defp normalize_content(content) when is_binary(content), do: content

  defp normalize_content(content) when is_list(content) do
    IO.iodata_to_binary(content)
  end

  defp normalize_content(_content), do: ""
end
