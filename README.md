# PromptVault

[![Hex.pm](https://img.shields.io/hexpm/v/prompt_vault.svg)](https://hex.pm/packages/prompt_vault)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/prompt_vault/)
[![CI](https://github.com/ElixirMentor/prompt_vault/workflows/CI/badge.svg)](https://github.com/ElixirMentor/prompt_vault/actions)
[![Coverage Status](https://img.shields.io/coveralls/github/ElixirMentor/prompt_vault.svg)](https://coveralls.io/github/ElixirMentor/prompt_vault)

A toolkit for managing and processing prompts with context, templates, and token counting for LLM applications.

PromptVault provides an immutable, token-aware context management system that helps you build robust LLM prompt pipelines with features like:

- **Context Management**: Immutable context with message history
- **Token Counting**: Built-in token counting with pluggable tokenizers
- **Template Support**: EEx and Liquid template engines
- **Message Types**: Support for text, tool calls, and media messages
- **Compaction Strategies**: Automatic context compaction when approaching token limits
- **Type Safety**: Full Elixir typespecs and documentation
- **LangChain Integration**: Seamless integration with Elixir LangChain

## Installation

Add `prompt_vault` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:prompt_vault, "~> 0.1.0"},
    {:tiktoken, "~> 0.4.1"}, # Optional: For accurate OpenAI token counting
    {:langchain, "~> 0.3.0"}  # Optional: For LangChain integration
  ]
end
```

The `tiktoken` dependency is optional and only needed if you want to use the `TiktokenTokenizer` for precise OpenAI token counting.

## Quick Start

```elixir
# Create a new context
context = PromptVault.new(
  model: "gpt-4",
  temperature: 0.7,
  token_counter: PromptVault.TokenCounter.TiktokenTokenizer
)

# Add messages
{:ok, context} = PromptVault.add_message(context, :system, "You are a helpful assistant")
{:ok, context} = PromptVault.add_message(context, :user, "Hello!")

# Count tokens
{:ok, token_count} = PromptVault.token_count(context)

# Render to final prompt
rendered = PromptVault.render(context)
```

## Features

### Message Types

**Text Messages**
```elixir
{:ok, context} = PromptVault.add_message(context, :user, "What's the weather like?")
```

**Tool Calls**
```elixir
{:ok, context} = PromptVault.add_tool_call(
  context, 
  :get_weather, 
  %{city: "New York"}, 
  %{type: "object", properties: %{temperature: %{type: "number"}}}
)
```

**Media Messages**
```elixir
{:ok, context} = PromptVault.add_media(
  context, 
  "image/jpeg", 
  "https://example.com/image.jpg"
)
```

### Templates

Use templates with assigns for dynamic content:

```elixir
{:ok, context} = PromptVault.add_message(
  context, 
  :user, 
  "Hello <%= @name %>!", 
  template: true, 
  assigns: %{name: "World"}
)
```

### Token Counting

PromptVault supports multiple tokenizers for accurate token counting:

**PretendTokenizer** (default, estimation-based):
```elixir
context = PromptVault.new(
  token_counter: PromptVault.TokenCounter.PretendTokenizer
)
```

**TiktokenTokenizer** (accurate, using OpenAI's tiktoken):
```elixir
context = PromptVault.new(
  model: "gpt-4",
  token_counter: PromptVault.TokenCounter.TiktokenTokenizer
)
```

The TiktokenTokenizer supports all major OpenAI models including GPT-4, GPT-3.5-turbo, and text-davinci models. It provides precise token counts that match OpenAI's billing.

### Context Compaction

Automatically compact context when approaching token limits:

```elixir
context = PromptVault.new(
  compaction_strategy: PromptVault.Compaction.SummarizeHistory,
  token_counter: PromptVault.TokenCounter.TiktokenTokenizer
)

{:ok, compacted_context} = PromptVault.compact(context)
```

### LangChain Integration

PromptVault integrates seamlessly with Elixir LangChain through the **Enumerable protocol** - pass contexts directly to LangChain functions without any conversion:

```elixir
# Create context with PromptVault
context = 
  PromptVault.new()
  |> PromptVault.add_message!(:system, "You are a helpful assistant")
  |> PromptVault.add_message!(:user, "What is the capital of France?")

# Pass context directly to LangChain - no conversion needed!
llm = LangChain.ChatModels.ChatOpenAI.new!()

chain = 
  LangChain.Chains.LLMChain.new!(%{llm: llm})
  |> LangChain.Chains.LLMChain.add_messages(context)  # Context used directly!
  |> LangChain.Chains.LLMChain.run()

response = LangChain.Utils.ChainResult.to_string!(chain)
```

**Key Benefits:**
- **Direct Usage**: No wrapper functions or manual conversion required
- **Type Safety**: Automatic conversion to LangChain.Message structs during enumeration
- **All Message Types**: Supports text, media, and tool call messages
- **Error Handling**: Gracefully handles unsupported message types
- **Standard Enum Functions**: Works with `Enum.map/2`, `Enum.filter/2`, etc.

See [LangChain Integration Guide](docs/langchain_integration.md) for detailed examples and advanced usage patterns.

## Configuration

Configure your context with various options:

```elixir
context = PromptVault.new(
  model: :gpt4,                    # LLM model
  temperature: 0.7,                # Model temperature
  max_tokens: 4000,                # Token limit
  token_counter: MyTokenCounter,   # Custom token counter
  compaction_strategy: MyStrategy  # Custom compaction strategy
)
```

## Documentation

Full documentation is available at [https://hexdocs.pm/prompt_vault](https://hexdocs.pm/prompt_vault).

## License

MIT License. See [LICENSE.md](LICENSE.md) for details.
