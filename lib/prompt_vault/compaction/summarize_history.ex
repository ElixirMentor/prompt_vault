defmodule PromptVault.Compaction.SummarizeHistory do
  @moduledoc """
  Compaction strategy that summarizes message history.

  This strategy preserves the first system message (if any) and replaces
  all other messages with a single assistant message containing a summary
  of the conversation history.

  ## Usage

      summarizer = fn messages ->
        "Summary of conversation with " <> Integer.to_string(length(messages)) <> " messages"
      end

      context = PromptVault.new(compaction_strategy: __MODULE__)
      {:ok, compacted} = PromptVault.compact(context, nil, summarizer: summarizer)

  """

  @behaviour PromptVault.Compaction

  alias PromptVault.Context
  alias PromptVault.Message.PromptMessage

  @impl true
  def compact(%Context{} = context, opts) do
    case Keyword.get(opts, :summarizer) do
      nil ->
        {:error, :no_summarizer}

      summarizer when is_function(summarizer, 1) ->
        do_compact(context, summarizer)

      _invalid ->
        {:error, {:invalid_summarizer, Keyword.get(opts, :summarizer)}}
    end
  end

  defp do_compact(%Context{messages: []} = context, _summarizer) do
    {:ok, context}
  end

  defp do_compact(%Context{messages: messages} = context, summarizer) do
    {system_messages, other_messages} =
      Enum.split_with(messages, fn msg ->
        msg.__struct__.role(msg) == :system
      end)

    if Enum.empty?(other_messages) do
      # Only system messages, nothing to summarize
      {:ok, context}
    else
      try do
        summary_text = summarizer.(other_messages)

        summary_message = %PromptMessage{
          role: :assistant,
          raw: summary_text,
          assigns: %{summary: true}
        }

        new_messages = system_messages ++ [summary_message]

        compacted_context = %{
          context
          | messages: new_messages,
            token_count: 0
        }

        {:ok, compacted_context}
      rescue
        exception ->
          {:error, {:summarizer_error, exception}}
      end
    end
  end
end
