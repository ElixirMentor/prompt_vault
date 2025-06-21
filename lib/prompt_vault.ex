defmodule PromptVault do
  @moduledoc """
  PromptVault provides an immutable, token-aware context management system for LLM prompts.

  The main entry point is `new/1` to create a new context, followed by functions
  to add messages, manage tokens, render templates, and compact message history.

  ## Example

      iex> PromptVault.new(model: :gpt4, temperature: 0.7)
      %PromptVault.Context{model: :gpt4, temperature: 0.7, messages: [], token_count: 0}

  """

  alias PromptVault.Context
  alias PromptVault.Message.{PromptMessage, ToolCallMessage, MediaMessage}

  @doc """
  Creates a new PromptVault context with the given options.

  ## Options

  - `:model` - The LLM model to use (atom or string)
  - `:temperature` - Temperature setting for the model
  - `:max_tokens` - Maximum tokens for the model
  - `:token_counter` - Module implementing TokenCounter behaviour
  - `:compaction_strategy` - Module or {module, opts} for compaction

  ## Examples

      iex> PromptVault.new(model: :gpt4, temperature: 0.7)
      %PromptVault.Context{model: :gpt4, temperature: 0.7, messages: [], token_count: 0}

  """
  @spec new(keyword()) :: Context.t()
  def new(opts \\ []) do
    %Context{
      model: Keyword.get(opts, :model),
      temperature: Keyword.get(opts, :temperature),
      max_tokens: Keyword.get(opts, :max_tokens),
      token_counter: Keyword.get(opts, :token_counter),
      compaction_strategy: Keyword.get(opts, :compaction_strategy),
      messages: [],
      token_count: 0
    }
  end

  @doc """
  Updates the model for the given context.

  ## Examples

      iex> PromptVault.new() |> PromptVault.put_model(:gpt4)
      %PromptVault.Context{model: :gpt4, messages: [], token_count: 0}

  """
  @spec put_model(Context.t(), atom | String.t()) :: Context.t()
  def put_model(context, model) do
    %{context | model: model}
  end

  @doc """
  Updates multiple options for the given context.

  Accepts the same options as `new/1`.

  ## Examples

      iex> PromptVault.new() |> PromptVault.put_opts(temperature: 0.5, max_tokens: 1000)
      %PromptVault.Context{temperature: 0.5, max_tokens: 1000, messages: [], token_count: 0}

  """
  @spec put_opts(Context.t(), keyword()) :: Context.t()
  def put_opts(context, opts) do
    %{
      context
      | model: Keyword.get(opts, :model, context.model),
        temperature: Keyword.get(opts, :temperature, context.temperature),
        max_tokens: Keyword.get(opts, :max_tokens, context.max_tokens),
        token_counter: Keyword.get(opts, :token_counter, context.token_counter),
        compaction_strategy: Keyword.get(opts, :compaction_strategy, context.compaction_strategy)
    }
  end

  @doc """
  Adds a message to the context.

  ## Parameters

  - `context` - The PromptVault context
  - `role` - Message role (`:system`, `:user`, or `:assistant`)
  - `raw` - The raw message content
  - `opts` - Options including `:template`, `:engine`, `:assigns`

  ## Examples

      iex> context = PromptVault.new()
      iex> {:ok, updated} = PromptVault.add_message(context, :user, "Hello")
      iex> length(updated.messages)
      1

  """
  @spec add_message(Context.t(), atom(), any(), keyword()) ::
          {:ok, Context.t()} | {:error, reason :: any()}
  def add_message(context, role, raw, opts \\ [])

  def add_message(context, role, raw, opts) when role in [:system, :user, :assistant] do
    message = %PromptMessage{
      role: role,
      raw: raw,
      template: Keyword.get(opts, :template),
      engine: Keyword.get(opts, :engine),
      assigns: Keyword.get(opts, :assigns, %{})
    }

    updated_context = %{
      context
      | messages: context.messages ++ [message],
        token_count: 0
    }

    {:ok, updated_context}
  end

  def add_message(_context, role, _raw, _opts) do
    {:error, {:invalid_role, role}}
  end

  @doc """
  Adds a tool call message to the context.

  ## Parameters

  - `context` - The PromptVault context
  - `tool` - Tool name (atom or string)
  - `args` - Tool arguments (map)
  - `response_schema` - Expected response schema (map or string)
  - `opts` - Options including `:template`, `:engine`, `:assigns`, `:raw`

  ## Examples

      iex> context = PromptVault.new()
      iex> {:ok, updated} = PromptVault.add_tool_call(context, :weather, %{city: "NYC"}, nil)
      iex> length(updated.messages)
      1

  """
  @spec add_tool_call(
          Context.t(),
          atom() | String.t(),
          map(),
          map() | String.t() | nil,
          keyword()
        ) ::
          {:ok, Context.t()} | {:error, reason :: any()}
  def add_tool_call(context, tool, args, response_schema, opts \\ [])

  def add_tool_call(context, tool, args, response_schema, opts) when is_map(args) do
    message = %ToolCallMessage{
      tool: tool,
      args: args,
      response_schema: response_schema,
      raw: Keyword.get(opts, :raw),
      template: Keyword.get(opts, :template),
      engine: Keyword.get(opts, :engine),
      assigns: Keyword.get(opts, :assigns, %{})
    }

    updated_context = %{
      context
      | messages: context.messages ++ [message],
        token_count: 0
    }

    {:ok, updated_context}
  end

  def add_tool_call(_context, _tool, args, _response_schema, _opts) do
    {:error, {:invalid_args, args}}
  end

  @doc """
  Adds a media message to the context.

  ## Parameters

  - `context` - The PromptVault context
  - `mime_type` - MIME type of the media (string)
  - `url` - URL or data URI of the media (string)
  - `opts` - Options including `:size`, `:template`, `:engine`, `:assigns`, `:raw`

  ## Examples

      iex> context = PromptVault.new()
      iex> {:ok, updated} = PromptVault.add_media(context, "image/jpeg", "https://example.com/img.jpg")
      iex> length(updated.messages)
      1

  """
  @spec add_media(Context.t(), String.t(), String.t(), keyword()) ::
          {:ok, Context.t()} | {:error, reason :: any()}
  def add_media(context, mime_type, url, opts \\ [])

  def add_media(context, mime_type, url, opts) when is_binary(mime_type) and is_binary(url) do
    message = %MediaMessage{
      mime_type: mime_type,
      url: url,
      size: Keyword.get(opts, :size),
      raw: Keyword.get(opts, :raw),
      template: Keyword.get(opts, :template),
      engine: Keyword.get(opts, :engine),
      assigns: Keyword.get(opts, :assigns, %{})
    }

    updated_context = %{
      context
      | messages: context.messages ++ [message],
        token_count: 0
    }

    {:ok, updated_context}
  end

  def add_media(_context, mime_type, _url, _opts) when not is_binary(mime_type) do
    {:error, {:invalid_mime_type, mime_type}}
  end

  def add_media(_context, _mime_type, url, _opts) when not is_binary(url) do
    {:error, {:invalid_url, url}}
  end

  @doc """
  Counts tokens in the context using the configured token counter.

  Returns the cached token count if available, otherwise renders all messages
  and counts tokens.

  ## Examples

      iex> context = PromptVault.new(token_counter: PromptVault.TokenCounter.PretendTokenizer)
      iex> {:ok, context} = PromptVault.add_message(context, :user, "Hello")
      iex> {:ok, count} = PromptVault.token_count(context)
      iex> count >= 0
      true

  """
  @spec token_count(Context.t()) :: {:ok, non_neg_integer()} | {:error, reason :: any()}
  def token_count(%Context{token_count: count}) when count > 0, do: {:ok, count}

  def token_count(%Context{token_counter: nil}), do: {:error, :token_counter_not_set}

  def token_count(%Context{} = context) do
    rendered = render(context)
    count = context.token_counter.count(context.model || :gpt4, rendered)

    {:ok, count}
  end

  @doc """
  Counts tokens and returns an updated context with the cached count.

  ## Examples

      iex> context = PromptVault.new(token_counter: PromptVault.TokenCounter.PretendTokenizer)
      iex> {:ok, context} = PromptVault.add_message(context, :user, "Hello")
      iex> {:ok, updated_context} = PromptVault.count_and_cache_tokens(context)
      iex> updated_context.token_count >= 0
      true

  """
  @spec count_and_cache_tokens(Context.t()) :: {:ok, Context.t()} | {:error, reason :: any()}
  def count_and_cache_tokens(%Context{token_counter: nil}), do: {:error, :token_counter_not_set}

  def count_and_cache_tokens(%Context{} = context) do
    rendered = render(context)
    count = context.token_counter.count(context.model || :gpt4, rendered)

    updated_context = %{context | token_count: count}
    {:ok, updated_context}
  end

  @doc """
  Renders all messages in the context to iodata.

  Processes each message in order, calling their rendered/2 callbacks
  with the message's assigns merged with any provided assigns.

  ## Examples

      iex> context = PromptVault.new()
      iex> {:ok, context} = PromptVault.add_message(context, :user, "Hello")
      iex> rendered = PromptVault.render(context)
      iex> is_binary(IO.iodata_to_binary(rendered))
      true

  """
  @spec render(Context.t(), map()) :: iodata()
  def render(context, assigns \\ %{})

  def render(%Context{messages: []}, _assigns), do: []

  def render(%Context{messages: messages}, assigns) do
    Enum.map(messages, fn message ->
      message.__struct__.rendered(message, assigns)
    end)
  end

  @doc """
  Compacts the context using the specified or configured compaction strategy.

  ## Parameters

  - `context` - The PromptVault context
  - `strategy` - Compaction strategy module or nil to use configured strategy
  - `opts` - Options to pass to the compaction strategy

  ## Examples

      iex> summarizer = fn msgs -> "Summary of " <> Integer.to_string(length(msgs)) <> " messages" end
      iex> context = PromptVault.new()
      iex> {:ok, context} = PromptVault.add_message(context, :user, "Hello")
      iex> {:ok, compacted} = PromptVault.compact(context, PromptVault.Compaction.SummarizeHistory, summarizer: summarizer)
      iex> length(compacted.messages)
      1

  """
  @spec compact(Context.t(), module() | nil, keyword()) ::
          {:ok, Context.t()} | {:error, reason :: any()}
  def compact(context, strategy \\ nil, opts \\ [])

  def compact(%Context{compaction_strategy: nil}, nil, _opts) do
    {:error, :no_compaction_strategy}
  end

  def compact(%Context{compaction_strategy: strategy} = context, nil, opts)
      when is_atom(strategy) do
    strategy.compact(context, opts)
  end

  def compact(%Context{compaction_strategy: {strategy, default_opts}} = context, nil, opts) do
    merged_opts = Keyword.merge(default_opts, opts)
    strategy.compact(context, merged_opts)
  end

  def compact(%Context{} = context, strategy, opts) when is_atom(strategy) do
    strategy.compact(context, opts)
  end

  def compact(%Context{} = context, {strategy, default_opts}, opts) do
    merged_opts = Keyword.merge(default_opts, opts)
    strategy.compact(context, merged_opts)
  end
end
