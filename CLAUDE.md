# PromptVault - AI Assistant Context

## Project Overview
PromptVault is an Elixir library that provides a toolkit for managing and processing prompts with context, templates, and token counting for LLM applications. It offers an immutable, token-aware context management system designed for building robust LLM prompt pipelines.

## Key Technologies
- **Language**: Elixir 1.18+
- **Runtime**: OTP 27
- **Testing**: ExUnit
- **Code Quality**: Credo, Dialyxir, ExCoveralls
- **Documentation**: ExDoc
- **Optional Dependencies**: 
  - Solid (for Liquid template support)
  - Fnord (required dependency)

## Core Architecture

### Main Modules
1. **PromptVault** (`lib/prompt_vault.ex`): Main API entry point
   - Functions: `new/1`, `add_message/4`, `add_tool_call/5`, `add_media/4`, `token_count/1`, `render/2`, `compact/3`

2. **PromptVault.Context** (`lib/prompt_vault/context.ex`): Core immutable context structure
   - Holds messages, model configuration, token counting, and compaction strategies

3. **Message Types**:
   - `PromptVault.Message.PromptMessage`: Text messages with role (system/user/assistant)
   - `PromptVault.Message.ToolCallMessage`: Tool/function calls with args and response schema
   - `PromptVault.Message.MediaMessage`: Media content (images, etc.) with MIME type and URL

4. **Template Engines**:
   - `PromptVault.TemplateEngine.EExEngine`: Elixir's built-in EEx templates
   - `PromptVault.TemplateEngine.LiquidEngine`: Liquid templates (requires Solid dependency)

5. **Token Counting**:
   - `PromptVault.TokenCounter.PretendTokenizer`: Mock tokenizer for testing/development

6. **Compaction**:
   - `PromptVault.Compaction.SummarizeHistory`: Strategy for compacting message history when approaching token limits

## Testing & Quality Commands

### Running Tests
```bash
mix test                    # Run all tests
mix test path/to/test.exs   # Run specific test file
mix test.watch              # Run tests in watch mode
```

### Code Quality
```bash
mix format                  # Format code
mix format --check-formatted # Check formatting (CI)
mix credo --strict          # Run Credo linter
mix dialyzer                # Run type checking
mix quality                 # Run all quality checks (format, compile, dialyzer, credo)
```

### Coverage
```bash
mix coveralls              # Generate coverage report
mix coveralls.html         # Generate HTML coverage report
```

## Development Workflow

### Adding New Features
1. Create/modify files in appropriate directories:
   - Core logic: `lib/prompt_vault/`
   - Message types: `lib/prompt_vault/message/`
   - Template engines: `lib/prompt_vault/template_engine/`
   - Token counters: `lib/prompt_vault/token_counter/`

2. Write tests in corresponding test files:
   - Test files mirror the lib structure in `test/`
   - Integration tests in `test/prompt_vault_integration_test.exs`

3. Run quality checks before committing:
   ```bash
   mix quality
   mix test
   ```

### Code Conventions
- Use pattern matching and guard clauses
- Return `{:ok, result}` or `{:error, reason}` tuples
- Add typespecs to all public functions
- Document modules and functions with `@moduledoc` and `@doc`
- Keep modules focused on a single responsibility
- Follow Elixir naming conventions (snake_case for functions/variables)

## Key Files Reference

### Configuration
- `mix.exs`: Project configuration, dependencies, aliases
- `.github/workflows/ci.yml`: CI pipeline configuration

### Documentation
- `README.md`: User-facing documentation
- `livebook/prompt_vault_guide.livemd`: Interactive guide

### Core Implementation
- `lib/prompt_vault.ex`: Main API (new, add_message, render, etc.)
- `lib/prompt_vault/context.ex`: Context struct definition
- `lib/prompt_vault/message.ex`: Message behaviour definition
- `lib/prompt_vault/template_engine.ex`: Template engine behaviour
- `lib/prompt_vault/token_counter.ex`: Token counter behaviour

## Common Tasks

### Building the Project
```bash
mix deps.get    # Install dependencies
mix compile     # Compile the project
```

### Documentation
```bash
mix docs        # Generate documentation
```

### Interactive Development
```bash
iex -S mix      # Start interactive Elixir shell with project loaded
```

## Important Notes
- The project uses behaviours extensively for extensibility
- All public APIs return tagged tuples for error handling
- Token counting is pluggable - implement the TokenCounter behaviour for custom tokenizers
- Template engines are pluggable - implement the TemplateEngine behaviour for custom engines
- The Context struct is immutable - all operations return a new context