defmodule PromptVault.TokenCounter do
  @moduledoc """
  Behaviour for token counting implementations.

  Token counters are responsible for counting tokens in content for specific models.
  Implementations should handle both atom and string model names.
  """

  @type t :: term()

  @doc """
  Counts tokens in the given content for the specified model.
  """
  @callback count(model :: atom | String.t(), content :: iodata) :: non_neg_integer
end
