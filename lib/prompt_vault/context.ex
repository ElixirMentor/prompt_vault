defmodule PromptVault.Context do
  @moduledoc """
  The core immutable context structure for PromptVault.

  A Context holds all the state needed for managing LLM prompts including
  messages, model configuration, token counting, and compaction strategies.
  """

  @type message :: PromptVault.Message.t()
  @type token_counter :: module()
  @type compaction_strategy :: module() | {module(), keyword()}

  @opaque t :: %__MODULE__{
            model: atom | String.t() | nil,
            temperature: float() | nil,
            max_tokens: pos_integer() | nil,
            messages: [message()],
            token_counter: token_counter() | nil,
            compaction_strategy: compaction_strategy() | nil,
            token_count: non_neg_integer()
          }

  defstruct model: nil,
            temperature: nil,
            max_tokens: nil,
            messages: [],
            token_counter: nil,
            compaction_strategy: nil,
            token_count: 0
end

defimpl Inspect, for: PromptVault.Context do
  import Inspect.Algebra

  def inspect(context, _opts) do
    parts =
      []
      |> add_if_present("model", context.model)
      |> add_if_present("msgs", length(context.messages))
      |> add_if_present("tokens≈", context.token_count)
      |> add_if_present("temp", context.temperature)
      |> add_if_present("max", context.max_tokens)

    concat([
      "#PromptVault<",
      parts |> Enum.join(" ") |> string(),
      ">"
    ])
  end

  defp add_if_present(parts, _key, nil), do: parts
  defp add_if_present(parts, _key, 0), do: parts
  defp add_if_present(parts, _key, []), do: parts

  defp add_if_present(parts, key, value) do
    formatted =
      if String.contains?(key, "≈") do
        "#{key}#{value}"
      else
        "#{key}=#{value}"
      end

    parts ++ [formatted]
  end
end
