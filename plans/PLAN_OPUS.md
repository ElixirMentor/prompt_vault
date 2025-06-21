# PromptVault Implementation Blueprint

## High-Level Architecture Overview

PromptVault is a utility package that provides an immutable, token-aware context management system for LLM prompts. The architecture centers around:

1. **Core Data Structure** - `PromptVault.Context` as the central immutable struct
2. **Message System** - Polymorphic message types implementing a common behaviour
3. **Extensibility Points** - Behaviours for token counting, compaction, and template rendering
4. **Functional API** - Pipe-friendly functions returning `{:ok, value} | {:error, reason}`

## Detailed Step-by-Step Blueprint

### Phase 1: Foundation (Core Structures & Behaviours)

1. **Project Setup**
   - Initialize Mix project with dependencies
   - Configure Mimic for testing
   - Set up basic project structure

2. **Core Behaviours**
   - Define `PromptVault.Message` behaviour
   - Define `PromptVault.TokenCounter` behaviour
   - Define `PromptVault.TemplateEngine` behaviour
   - Define `PromptVault.Compaction` behaviour

3. **Context Structure**
   - Implement `PromptVault.Context` struct
   - Add Inspect protocol implementation
   - Create basic new/1 constructor

### Phase 2: Message System

4. **Base Message Types**
   - Implement `PromptVault.Message.PromptMessage`
   - Implement `PromptVault.Message.ToolCallMessage`
   - Implement `PromptVault.Message.MediaMessage`
   - Ensure all implement the Message behaviour

5. **Message Builders**
   - Implement add_message/4
   - Implement add_tool_call/5
   - Implement add_media/4
   - Add validation and error handling

### Phase 3: Template Engines

6. **EEx Template Engine**
   - Implement `PromptVault.TemplateEngine.EExEngine`
   - Support inline, file, and module template sources
   - Add comprehensive error handling

7. **Liquid Template Engine**
   - Implement `PromptVault.TemplateEngine.LiquidEngine`
   - Mock liquid dependency for testing
   - Handle template parsing errors

### Phase 4: Token Management

8. **Token Counter Integration**
   - Implement token_count/1 function
   - Add lazy caching mechanism
   - Create mock token counter for tests

9. **Default Token Counter**
   - Implement `PromptVault.TokenCounter.Tiktoken`
   - Handle optional dependency gracefully
   - Add fallback behavior

### Phase 5: Rendering & Compaction

10. **Message Rendering**
    - Implement render/1 function
    - Handle template rendering for each message type
    - Aggregate rendered output

11. **Compaction Strategy**
    - Implement `PromptVault.Compaction.SummarizeHistory`
    - Add summarizer configuration
    - Preserve system messages correctly

### Phase 6: API Completion & Polish

12. **API Functions**
    - Implement put_model/2 and put_opts/2
    - Add compact/3 with strategy selection
    - Ensure all functions are pipe-friendly

13. **Error Handling & Validation**
    - Standardize error tuples
    - Add input validation
    - Create custom error types if needed

### Phase 7: Testing & Documentation

14. **Comprehensive Testing**
    - Unit tests for each module
    - Integration tests for full workflows
    - Concurrency safety tests

15. **Documentation & Examples**
    - Add @moduledoc and @doc annotations
    - Create example usage guides
    - Configure mix docs

## Iterative Implementation Chunks

After reviewing the blueprint, here are the refined implementation steps:

### Round 1: Core Foundation (Steps 1-3)
- **Step 1**: Project setup with dependencies and test configuration
- **Step 2**: Define all behaviours (Message, TokenCounter, TemplateEngine, Compaction)
- **Step 3**: Implement Context struct with new/1 and Inspect protocol

### Round 2: Message System (Steps 4-5)
- **Step 4**: Implement all three message types with Message behaviour
- **Step 5**: Add message builder functions with validation

### Round 3: Template Engines (Steps 6-7)
- **Step 6**: Implement EEx engine with all template source types
- **Step 7**: Implement Liquid engine with proper mocking

### Round 4: Token Management (Steps 8-9)
- **Step 8**: Add token_count/1 with caching
- **Step 9**: Create Tiktoken adapter with optional dependency handling

### Round 5: Core Features (Steps 10-11)
- **Step 10**: Implement render/1 with template processing
- **Step 11**: Add SummarizeHistory compaction strategy

### Round 6: API & Polish (Steps 12-13)
- **Step 12**: Complete remaining API functions
- **Step 13**: Standardize error handling across the library

### Round 7: Testing & Docs (Steps 14-15)
- **Step 14**: Write comprehensive test suite
- **Step 15**: Add documentation and configure mix docs

## Code Generation Prompts

### Prompt 1: Project Setup and Behaviours

```text
You are implementing PromptVault, an Elixir utility package for managing LLM prompt contexts. 

Create the initial project structure with these requirements:
1. Initialize a new Mix project called "prompt_vault"
2. Add dependencies: {:mimic, "~> 1.7", only: :test}
3. Configure Mimic in test_helper.exs
4. Create the following behaviour modules with their callbacks:

PromptVault.Message behaviour:
- @callback role(t) :: atom
- @callback raw(t) :: any  
- @callback rendered(t, assigns :: map) :: iodata
- @callback template_engine(t) :: atom | nil

PromptVault.TokenCounter behaviour:
- @callback count(model :: atom | String.t, content :: iodata) :: non_neg_integer

PromptVault.TemplateEngine behaviour:
- @callback render(template_source :: any, assigns :: map) :: {:ok, iodata} | {:error, reason :: any}

PromptVault.Compaction behaviour:
- @callback compact(context :: PromptVault.Context.t, opts :: keyword) :: {:ok, PromptVault.Context.t} | {:error, reason :: any}

Use @type t :: term() in each behaviour module. Add basic @moduledoc documentation for each.

Also create empty test files for each behaviour module using ExUnit.Case.
```

### Prompt 2: Context Structure and Core API

```text
Building on the previous step, implement the core PromptVault.Context structure:

1. Create lib/prompt_vault/context.ex with:
   - Define the Context struct with fields: model, temperature, max_tokens, messages, token_counter, compaction_strategy, token_count
   - Make the struct opaque using @opaque t
   - Add @type definitions for all field types

2. In lib/prompt_vault.ex:
   - Create new/1 function that accepts keyword options and returns a Context struct
   - Set defaults: messages: [], token_count: 0, token_counter: nil
   - Add put_model/2 and put_opts/2 functions that update the context
   - All functions should be pure and return the updated struct

3. Implement the Inspect protocol for PromptVault.Context:
   - Display format: #PromptVault<model=X msgs=Y tokens≈Z temp=T max=M>
   - Hide nil values (temperature, max_tokens)
   - Use Inspect.Algebra functions

4. Write tests for:
   - Context creation with various options
   - Field updates via put_model/2 and put_opts/2
   - Inspect protocol output

Ensure all code follows Elixir idioms and uses Logger.warning/2 for any warnings.
```

### Prompt 3: Message Types Implementation

```text
Implement the three message types that conform to the PromptVault.Message behaviour:

1. Create lib/prompt_vault/message/prompt_message.ex:
   - Struct with fields: role (atom), raw (any), template (tuple | nil), engine (atom | nil), assigns (map)
   - Implement all Message behaviour callbacks
   - role/1 returns the role atom
   - raw/1 returns the raw content
   - template_engine/1 returns the engine or nil
   - rendered/2 should return raw if no template, otherwise {:error, :not_implemented} for now

2. Create lib/prompt_vault/message/tool_call_message.ex:
   - Struct with fields: role (:tool), tool (atom | String.t), args (map), response_schema (map | String.t), raw (any), template, engine, assigns
   - Implement Message behaviour with role/1 always returning :tool
   - Similar rendered/2 logic as PromptMessage

3. Create lib/prompt_vault/message/media_message.ex:
   - Struct with fields: role (:media), mime_type (String.t), url (String.t), raw (any), template, engine, assigns, size (pos_integer | nil)
   - Implement Message behaviour with role/1 always returning :media

4. Write comprehensive tests for each message type:
   - Struct creation
   - Behaviour callback implementations
   - Edge cases (nil values, empty maps, etc.)

Use @enforce_keys for required fields in each struct.
```

### Prompt 4: Message Builder Functions

```text
Add message builder functions to the main PromptVault module:

1. In lib/prompt_vault.ex, implement:
   - add_message/4: (context, role, raw, opts) -> {:ok, updated_context} | {:error, reason}
     * Validate role is :system, :user, or :assistant
     * Extract template, engine, assigns from opts
     * Create PromptMessage and append to messages list
     * Return {:error, :invalid_role} for invalid roles

   - add_tool_call/5: (context, tool, args, response_schema, opts) -> {:ok, updated_context} | {:error, reason}
     * Validate args is a map
     * Create ToolCallMessage with role :tool
     * Append to messages list

   - add_media/4: (context, mime_type, url, opts) -> {:ok, updated_context} | {:error, reason}
     * Validate mime_type and url are strings
     * Extract size from opts if present
     * Create MediaMessage with role :media

2. All builder functions should:
   - Be pipe-friendly (context as first argument)
   - Return {:ok, updated_context} on success
   - Return {:error, reason} on validation failure
   - Never raise exceptions

3. Write tests covering:
   - Successful message addition
   - Chaining multiple message additions with pipe
   - Validation failures
   - Order preservation (oldest to newest)

Use pattern matching and guards for validation. Ensure immutability is maintained.
```

### Prompt 5: Template Engine Implementation

```text
Implement the template engine system with EEx and Liquid engines:

1. Create lib/prompt_vault/template_engine/eex_engine.ex:
   - Implement TemplateEngine behaviour
   - Handle template sources: {:inline, string}, {:file, path}, {:module, module}
   - For inline: use EEx.eval_string/2
   - For file: read file then eval
   - For module: assume module has render/1 function
   - Return {:ok, iodata} or {:error, reason}
   - Catch exceptions and convert to {:error, exception}

2. Create lib/prompt_vault/template_engine/liquid_engine.ex:
   - Implement TemplateEngine behaviour  
   - For now, return {:error, :liquid_not_available} unless Code.ensure_loaded?(Liquid)
   - If available, handle same template sources as EEx
   - Use Liquid.parse/1 and Liquid.render/2

3. Update message types' rendered/2 callbacks:
   - Detect engine from struct
   - Load appropriate engine module
   - Call engine's render/2 with template and assigns
   - Fall back to raw if no template
   - Return iodata directly (not tuples)

4. Write tests using Mimic:
   - Mock file reading for file templates
   - Mock Liquid module for liquid engine tests
   - Test error cases (missing files, bad templates, exceptions)
   - Test successful rendering with assigns

Add @moduledoc explaining template source formats and engine selection.
```

### Prompt 6: Token Counting Implementation

```text
Implement the token counting system with caching:

1. Create lib/prompt_vault/token_counter/tiktoken.ex:
   - Implement TokenCounter behaviour
   - Check if Tiktoken module is available using Code.ensure_loaded?/1
   - If available, delegate to Tiktoken.count/2
   - If not available, fall back to simple byte size estimation (divide by 4)
   - Handle both atom and string model names

2. In lib/prompt_vault.ex, add:
   - token_count/1 function that:
     * Returns cached token_count if > 0
     * Returns {:error, :token_counter_not_set} if no counter configured
     * Otherwise, renders all messages and counts tokens
     * Updates the context with cached count
   - Make token counting lazy and cache the result

3. Update Context struct:
   - Ensure token_count field defaults to 0
   - Reset to 0 when messages are modified

4. Create a mock token counter for testing:
   - Simple module that counts words (split by whitespace)
   - Use this in tests instead of Tiktoken

5. Write tests:
   - Token counting with mock counter
   - Caching behavior (count only computed once)
   - Cache invalidation on message changes
   - Error when no token counter set
   - Tiktoken adapter with and without dependency

Use Mimic to mock Tiktoken availability in tests.
```

### Prompt 7: Render Function Implementation

```text
Implement the main render/1 function that processes all messages:

1. In lib/prompt_vault.ex, implement render/1:
   - Iterate through all messages in order
   - For each message, call its rendered/2 callback
   - Pass message.assigns || %{} as the assigns parameter
   - Collect all rendered content as iodata
   - Return the combined iodata (not wrapped in a tuple)

2. Handle rendering edge cases:
   - Empty message list returns []
   - Messages without templates use raw content
   - Template rendering errors should propagate
   - Preserve iodata structure (don't flatten to string)

3. Enhance message rendering:
   - PromptMessage: if template, use specified engine
   - ToolCallMessage: optionally format tool + args + response
   - MediaMessage: optionally include metadata in rendering

4. Create rendering helper module (lib/prompt_vault/renderer.ex):
   - Extract template source resolution logic
   - Handle engine module loading
   - Provide consistent error handling

5. Write comprehensive render tests:
   - Mix of message types
   - Template vs raw content
   - Various template engines
   - Assigns propagation
   - Error handling from template engines
   - iodata optimization (no unnecessary conversions)

Focus on performance and memory efficiency with iodata.
```

### Prompt 8: Compaction Strategy Implementation

```text
Implement the SummarizeHistory compaction strategy:

1. Create lib/prompt_vault/compaction/summarize_history.ex:
   - Implement Compaction behaviour
   - compact/2 function logic:
     * Find and preserve the first system message (if any)
     * Extract summarizer function from opts[:summarizer]
     * Return {:error, :no_summarizer} if not provided
     * Pass all non-system messages to summarizer
     * Create new assistant message with role: :assistant, raw: summary_text
     * Tag the summary message in metadata/assigns as %{summary: true}
     * Return new context with system message + summary message only

2. In lib/prompt_vault.ex, implement compact/3:
   - compact(context, strategy \\ nil, opts \\ [])
   - If strategy is nil, use context.compaction_strategy
   - If strategy is a module, use it directly
   - If strategy is {module, default_opts}, merge with provided opts
   - Call strategy.compact/2 with context and opts
   - Return the result tuple unchanged

3. Handle token count updates:
   - After successful compaction, reset token_count to 0
   - This triggers recalculation on next token_count/1 call

4. Write tests with mocked summarizer:
   - Successful compaction with summarizer
   - Error when no summarizer provided  
   - System message preservation
   - Multiple compactions
   - Token count reset
   - Custom strategies via Mimic

Use Mimic to create mock summarizer functions that return predictable summaries.
```

### Prompt 9: Error Handling and Validation

```text
Standardize error handling across the entire library:

1. Create lib/prompt_vault/error.ex module:
   - Define common error tuples as functions:
     * invalid_role(role) -> {:error, {:invalid_role, role}}
     * invalid_template_source(source) -> {:error, {:invalid_template_source, source}}
     * token_counter_not_set() -> {:error, :token_counter_not_set}
     * no_summarizer() -> {:error, :no_summarizer}
     * unknown_engine(engine) -> {:error, {:unknown_engine, engine}}
     * template_not_found(path) -> {:error, {:template_not_found, path}}

2. Update all modules to use standardized errors:
   - Replace hardcoded error tuples with Error module functions
   - Ensure consistent error shapes
   - Add error details where helpful

3. Add input validation guards:
   - Message roles must be atoms
   - URLs must be strings  
   - MIME types must be strings
   - Maps must be actual maps (not keyword lists)
   - Template sources must match expected patterns

4. Improve error messages:
   - Include the invalid value in error tuples
   - Provide actionable error reasons
   - Never raise exceptions (always return error tuples)

5. Write error handling tests:
   - Each type of validation error
   - Error propagation through pipes
   - Error tuple shapes are consistent
   - No exceptions escape to caller

Add @doc documentation for each error type explaining when it occurs.
```

### Prompt 10: Integration and Advanced Features

```text
Complete the integration of all components and add final features:

1. Add advanced Context functions in lib/prompt_vault.ex:
   - update_messages/2: Apply a function to transform messages
   - filter_messages/2: Filter messages by predicate
   - get_messages_by_role/2: Retrieve all messages of a specific role
   - clear_messages/1: Return context with empty messages
   - All should maintain immutability and update token_count to 0

2. Add template variable extraction:
   - In renderer, collect all unique template variables
   - Expose get_required_assigns/1 to list variables needed
   - Useful for validation before rendering

3. Implement proper template source resolution:
   - For {:file, path}, check file exists before reading
   - For {:module, mod}, verify module exports render/1
   - Cache file contents in assigns for performance
   - Handle relative vs absolute paths correctly

4. Add builder function options:
   - add_message/4 should accept :prepend option to add at beginning
   - add_tool_call/5 should validate response_schema structure
   - Support batch operations like add_messages/2

5. Write integration tests:
   - Complete workflow: new -> add messages -> render -> count -> compact
   - Multiple template engines in same context
   - Large message histories (performance test)
   - Concurrent access to same context (immutability test)

Ensure all functions remain pure and pipe-friendly.
```

### Prompt 11: Comprehensive Testing Suite

```text
Create a comprehensive test suite ensuring quality and reliability:

1. Create test/prompt_vault_integration_test.exs:
   - Full workflow tests combining all features
   - Real-world usage scenarios
   - Performance benchmarks for large contexts
   - Memory usage verification

2. Create test/support/factory.ex:
   - Helper functions to create test contexts
   - Sample messages of each type
   - Mock token counters with predictable behavior
   - Mock summarizers for compaction tests

3. Add property-based thinking (without PropCheck):
   - Test with generated message lists of varying sizes
   - Verify invariants: immutability, message order, token count >= 0
   - Ensure no operations can corrupt the context structure

4. Create fixture-based tests:
   - test/fixtures/templates/ with sample template files
   - Test template loading and rendering
   - Regression tests for rendered output

5. Add concurrency tests:
   - Use Task.async_stream to verify thread safety
   - Confirm no shared mutable state
   - Test concurrent rendering and token counting

6. Mock external dependencies:
   - Use Mimic for Tiktoken, Liquid
   - Mock file system operations
   - Test both presence and absence of optional deps

Write at least 95% test coverage with meaningful assertions.
```

### Prompt 12: Documentation and Package Finalization  

```text
Finalize the package with professional documentation and examples:

1. Add comprehensive @moduledoc to each module:
   - Overview and purpose
   - Usage examples
   - Available options
   - Error conditions
   - Links to related modules

2. Add @doc to every public function:
   - Function purpose
   - Parameter descriptions
   - Return value specifications  
   - Example usage
   - Possible errors

3. Create README.md with:
   - Installation instructions
   - Quick start guide
   - Complete usage example
   - Configuration options
   - Extending with custom behaviours
   - Error handling patterns

4. Add @typedoc for all custom types

5. Create guides/ directory:
   - guides/getting_started.md
   - guides/custom_engines.md
   - guides/token_management.md
   - guides/compaction_strategies.md

6. Configure mix.exs:
   - Add package metadata for Hex
   - Configure ex_doc with groups
   - Set up changelog
   - Add .formatter.exs
   - Configure dialyzer

7. Add examples/ directory:
   - Basic usage example
   - Custom token counter
   - Custom compaction strategy
   - Multi-engine templates

Ensure documentation is clear, complete, and includes practical examples.
```

---

## Summary

This implementation plan breaks down the PromptVault project into 12 manageable chunks, each building on the previous ones. The approach emphasizes:

1. **Test-Driven Development** - Each prompt includes specific testing requirements
2. **Incremental Progress** - No big jumps in complexity
3. **Early Integration** - Components are wired together as soon as they're built
4. **Error Handling First** - Consistent error handling from the start
5. **Documentation Throughout** - Not left until the end

The prompts are designed to be executed sequentially, with each one producing working, tested code that integrates with the previous steps. No code is left orphaned or unwired.Looking at the latest information, I've confirmed that Mimic version 1.12 is the current version and it remains a popular choice for mocking in Elixir. The implementation plan I've created aligns with current best practices for Elixir development in 2025.

The blueprint I've provided breaks down the PromptVault project into 12 manageable implementation steps, each designed to:

1. **Build incrementally** - Each step adds functionality that integrates immediately with previous work
2. **Test first** - Every prompt emphasizes writing tests before or alongside implementation
3. **Handle errors gracefully** - Consistent use of `{:ok, value} | {:error, reason}` patterns
4. **Follow Elixir idioms** - Pipe-friendly APIs, immutable data structures, and proper use of behaviours

The key architectural decisions include:
- Using behaviours for all extension points (TokenCounter, TemplateEngine, Compaction)
- Maintaining immutability throughout with pure functions
- Leveraging Mimic for test mocking, which requires calling copy/1 in test_helper.exs for each module
- Creating a clean, composable API that works well with Elixir's pipe operator

Each prompt is self-contained but builds on previous work, ensuring no orphaned code. The progression from core structures → message system → template engines → token management → rendering/compaction → API completion → testing/docs ensures a logical development flow.

The implementation follows the specification exactly while incorporating Elixir best practices like:
- Using `Logger.warning/2` instead of deprecated `Logger.warn/1`
- Comprehensive pattern matching and guards for validation
- Proper error handling without exceptions
- Strong emphasis on testability with Mimic

This approach will result in a robust, maintainable, and extensible library that fulfills all the requirements in the PRD while being idiomatic Elixir code.