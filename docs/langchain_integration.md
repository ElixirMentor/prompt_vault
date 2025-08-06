# LangChain Integration

PromptVault provides seamless integration with the Elixir LangChain package through the **Enumerable protocol**. This allows you to pass PromptVault contexts directly to LangChain functions, combining PromptVault's context management and token counting capabilities with LangChain's powerful LLM chain system.

## Installation

Add both `prompt_vault` and `langchain` to your dependencies:

```elixir
def deps do
  [
    {:prompt_vault, "~> 0.1.0"},
    {:langchain, "~> 0.3.0"}
  ]
end
```

## Basic Usage

### Direct Context Integration

The primary way to use PromptVault with LangChain is to pass contexts directly to LangChain functions:

```elixir
# Create a PromptVault context
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

### How It Works

PromptVault.Context implements the `Enumerable` protocol, which means:

- When LangChain calls `add_messages(context)`, it automatically converts PromptVault messages to LangChain.Message structs
- You can use any `Enum` function on PromptVault contexts
- The conversion happens transparently - no manual conversion required

```elixir
context = 
  PromptVault.new()
  |> PromptVault.add_message!(:user, "Hello")
  |> PromptVault.add_message!(:assistant, "Hi!")

# These all work automatically:
Enum.count(context)           # => 2
Enum.map(context, &(&1.role)) # => [:user, :assistant]
messages = Enum.to_list(context) # => [%LangChain.Message{...}, ...]
```

## Advanced Features

### Using Tools and Custom Context

You can still use all of LangChain's advanced features like tools and custom context:

```elixir
# Define a custom function tool
weather_function = %LangChain.Function{
  name: "get_weather",
  description: "Get current weather for a location",
  parameters_schema: %{
    type: "object",
    properties: %{
      location: %{type: "string", description: "City name"}
    }
  },
  function: fn %{"location" => location}, _context ->
    # Your weather API call here
    "The weather in #{location} is sunny, 72°F"
  end
}

context = 
  PromptVault.new()
  |> PromptVault.add_message!(:user, "What's the weather in Paris?")

llm = LangChain.ChatModels.ChatOpenAI.new!()

chain = 
  LangChain.Chains.LLMChain.new!(%{
    llm: llm,
    custom_context: %{user_id: 123}
  })
  |> LangChain.Chains.LLMChain.add_tools([weather_function])
  |> LangChain.Chains.LLMChain.add_messages(context)  # PromptVault context!
  |> LangChain.Chains.LLMChain.run(mode: :while_needs_response)
```

### Converting Back from LangChain

You can convert LangChain messages back to a PromptVault context:

```elixir
# After running a LangChain chain, convert back to PromptVault
langchain_messages = chain.messages

{:ok, new_context} = PromptVault.LangChain.from_langchain_messages(langchain_messages)

# Continue with PromptVault operations
{:ok, new_context} = PromptVault.add_message(new_context, :user, "Follow up question")
```

## Template Integration

PromptVault's template system works seamlessly with LangChain:

```elixir
context = 
  PromptVault.new()
  |> PromptVault.add_message!(:system, "You are a <%= @role %> assistant", 
    assigns: %{role: "helpful"})
  |> PromptVault.add_message!(:user, "Hello <%= @name %>!", 
    assigns: %{name: "Alice"})

# Templates are rendered automatically when the context is enumerated by LangChain
llm = LangChain.ChatModels.ChatOpenAI.new!()

chain = 
  LangChain.Chains.LLMChain.new!(%{llm: llm})
  |> LangChain.Chains.LLMChain.add_messages(context)  # Templates rendered here!
```

## Token Management

Combine PromptVault's token counting with LangChain:

```elixir
context = 
  PromptVault.new(
    token_counter: PromptVault.TokenCounter.TiktokenTokenizer,
    max_tokens: 4000
  )
  |> PromptVault.add_message!(:user, "Long conversation...")

# Count tokens before sending to LangChain
{:ok, token_count} = PromptVault.token_count(context)

final_context = if token_count > 3000 do
  # Compact the context before sending to LangChain
  {:ok, compacted_context} = PromptVault.compact(context)
  compacted_context
else
  context
end

# Use the final context directly with LangChain
llm = LangChain.ChatModels.ChatOpenAI.new!()

chain = 
  LangChain.Chains.LLMChain.new!(%{llm: llm})
  |> LangChain.Chains.LLMChain.add_messages(final_context)
  |> LangChain.Chains.LLMChain.run()
```

## Error Handling

The integration includes proper error handling:

```elixir
try do
  llm = LangChain.ChatModels.ChatOpenAI.new!()
  
  chain = 
    LangChain.Chains.LLMChain.new!(%{llm: llm})
    |> LangChain.Chains.LLMChain.add_messages(context)
    |> LangChain.Chains.LLMChain.run()
    
  response = LangChain.Utils.ChainResult.to_string!(chain)
  IO.puts("Response: #{response}")
rescue
  error ->
    IO.puts("Error: #{inspect(error)}")
end
```

## Benefits

Using PromptVault with LangChain provides several advantages:

1. **Direct Integration**: Pass PromptVault contexts directly to LangChain - no manual conversion needed
2. **Context Management**: PromptVault's immutable context system for managing conversation state
3. **Token Awareness**: Built-in token counting and management to avoid API limits
4. **Template System**: Dynamic prompt generation with EEx or Liquid templates
5. **Message Compaction**: Intelligent message history summarization when approaching token limits
6. **Type Safety**: Structured message types with validation
7. **Enumerable Protocol**: Full compatibility with Elixir's Enum functions

## Complete Example

Here's a complete example showing a conversational agent with token management:

```elixir
defmodule ConversationalAgent do
  def start_conversation do
    PromptVault.new(
      model: :gpt4,
      temperature: 0.7,
      max_tokens: 4000,
      token_counter: PromptVault.TokenCounter.TiktokenTokenizer,
      compaction_strategy: PromptVault.Compaction.SummarizeHistory
    )
    |> PromptVault.add_message!(:system, 
      "You are a helpful assistant. Keep responses concise.")
  end

  def chat(context, user_input) do
    # Add user message
    context = PromptVault.add_message!(context, :user, user_input)

    # Check token count and compact if needed
    context = case PromptVault.token_count(context) do
      {:ok, count} when count > 3500 ->
        {:ok, compacted} = PromptVault.compact(context)
        compacted
      _ ->
        context
    end

    # Run through LangChain using direct context integration
    try do
      llm = LangChain.ChatModels.ChatOpenAI.new!()
      
      chain = 
        LangChain.Chains.LLMChain.new!(%{llm: llm})
        |> LangChain.Chains.LLMChain.add_messages(context)  # Direct context usage!
        |> LangChain.Chains.LLMChain.run()
        
      response = LangChain.Utils.ChainResult.to_string!(chain)
      
      # Convert back and add assistant response
      {:ok, updated_context} = 
        PromptVault.LangChain.from_langchain_messages(chain.messages)
      
      {response, updated_context}
    rescue
      error ->
        {"Sorry, I encountered an error: #{inspect(error)}", context}
    end
  end
end

# Usage
context = ConversationalAgent.start_conversation()
{response, context} = ConversationalAgent.chat(context, "Hello!")
{response, context} = ConversationalAgent.chat(context, "Tell me about AI")
```

This integration brings together the best of both libraries through the Enumerable protocol, providing a robust foundation for building LLM-powered applications with seamless interoperability, proper context management, and token awareness.
