defmodule PromptVault.Compaction do
  @moduledoc """
  Behaviour for compaction strategy implementations.

  Compaction strategies are used to reduce the number of messages in a context
  while preserving important information, typically to manage token limits.
  """

  @type t :: term()

  @doc """
  Compacts the given context using the strategy's algorithm.

  Returns a new context with fewer messages, or an error if compaction fails.
  """
  @callback compact(context :: PromptVault.Context.t(), opts :: keyword) ::
              {:ok, PromptVault.Context.t()} | {:error, reason :: any}
end
