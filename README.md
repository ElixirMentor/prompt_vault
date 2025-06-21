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

## Installation

Add `prompt_vault` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:prompt_vault, "~> 0.1.0"}
  ]
end
```

## Quick Start

```elixir
# Create a new context
context = PromptVault.new(
  model: :gpt4,
  temperature: 0.7,
  token_counter: PromptVault.TokenCounter.PretendTokenizer
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

### Context Compaction

Automatically compact context when approaching token limits:

```elixir
context = PromptVault.new(
  compaction_strategy: PromptVault.Compaction.SummarizeHistory,
  token_counter: PromptVault.TokenCounter.PretendTokenizer
)

{:ok, compacted_context} = PromptVault.compact(context)
```

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
