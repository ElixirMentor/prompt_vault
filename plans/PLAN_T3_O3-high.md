# Blueprint → Iterative Plan → Right-Sized Steps → LLM Prompts

Below you will find:

1. High-level blueprint (what we will build and why).  
2. First pass at iterative chunks (coarse sprint-sized slices).  
3. Second pass (right-sized, test-driven steps).  
4. A sequence of copy-paste-ready prompts (`text` blocks) for a code-generation LLM to implement each step incrementally and safely.

---

## 1. High-Level Blueprint

- Domain
  - Provide one immutable struct (`PromptVault.Context`) that carries messages and metadata required for LLM calls.
  - Expose a pipe-friendly functional API: pure, returns `{:ok, context}` or `{:error, reason}`.
  - Support multiple message kinds through behaviours and polymorphic structs.
  - Remain model-, vendor-, and template-engine-agnostic via behaviours (`TokenCounter`, `TemplateEngine`, `Compaction`).
  - Never mutate automatically; all compaction is explicit.

- Architectural Principles
  - Keep all public functions pure for deterministic unit testing.
  - Isolate behaviour adapters behind `behaviour.ex` modules; default adapters live in sibling namespaces.
  - Favour composition over inheritance; prefer plain functions over macros unless absolutely necessary.
  - Use `Logger.warning/2` (not deprecated `warn/1`) in failure branches that do not justify raising.
  - Testing: ExUnit + Mimic for mocks; each step ships its own passing test suite.
  - Documentation: ExDoc tags, doctests, typedocs.

---

## 2. First-Pass Iterative Chunks (Sprint-Sized)

Chunk A – Scaffolding & CI  
- mix project, CI, code formatting, `mix docs`

Chunk B – Core Context Skeleton  
- `PromptVault.Context` struct, new/1, inspect protocol

Chunk C – PromptMessage variant + public add_message/4 API

Chunk D – ToolCallMessage & MediaMessage variants

Chunk E – TemplateEngine behaviour + default EExEngine adapter

Chunk F – TokenCounter behaviour + stub adapter

Chunk G – token_count/1 implementation with caching

Chunk H – render/1 (template rendering pipeline)

Chunk I – Compaction behaviour + SummarizeHistory strategy

Chunk J – Public compact/3 function

Chunk K – LiquidEngine adapter (optional)

Chunk L – Hex readiness: docs, changelog, versioning

---

## 3. Second-Pass: Right-Sized, Test-Driven Steps

(The ⬅︎ arrows map each small step to its parent chunk.)

A1⬅︎A  Generate Mix project, configure `.formatter.exs`, dialyzer, Credo.  
A2⬅︎A  Add GitHub Actions CI running tests + formatter + dialyzer.  

B1⬅︎B  Create `PromptVault.Context` struct (fields only, opaque).  
B2⬅︎B  Implement `new/1` with sane defaults + unit tests.  
B3⬅︎B  Implement `Inspect` protocol one-liner + tests.

C1⬅︎C  Define `PromptVault.Message` behaviour (callbacks only).  
C2⬅︎C  Implement `PromptVault.Message.PromptMessage` struct + behaviour impl.  
C3⬅︎C  Add `add_message/4` public API with validation + tests.

D1⬅︎D  Implement `ToolCallMessage` struct + behaviour impl.  
D2⬅︎D  Implement `MediaMessage` struct + behaviour impl.  
D3⬅︎D  Extend public API (`add_tool_call/5`, `add_media/5`) + tests.

E1⬅︎E  Define `TemplateEngine` behaviour.  
E2⬅︎E  Implement `EExEngine` adapter + tests (render inline/file).  
E3⬅︎E  Plug engine selection into `rendered/2` for messages.

F1⬅︎F  Define `TokenCounter` behaviour.  
F2⬅︎F  Implement `PromptVault.TokenCounter.Stub` (returns byte size) + tests.

G1⬅︎G  Implement `PromptVault.token_count/1` calling counter module; add caching; tests using Mimic to stub behaviour.

H1⬅︎H  Implement `PromptVault.render/1` that delegates rendering per message and joins IOData; tests with mixed engines.

I1⬅︎I  Define `Compaction` behaviour.  
I2⬅︎I  Implement `SummarizeHistory` strategy (pure, summarizer Fn).  
I3⬅︎I  Property tests: ensure first system msg preserved, etc.

J1⬅︎J  Expose `PromptVault.compact/3` public API + tests using Mimic summarizer.

K1⬅︎K  Implement `LiquidEngine` adapter with `ExLiquid`.  
K2⬅︎K  Integration test mixing EEx & Liquid templates.

L1⬅︎L  Add moduledocs, doctests, `mix hex.build`, CHANGELOG.  
L2⬅︎L  Finalize README usage example, publish docs from CI.

---

## 4. Copy-Paste Prompts for Code-Generation LLM

Every prompt assumes the repo root is clean and tests must stay green.  
Each prompt:

- Describes the next incremental goal.  
- Lists acceptance criteria.  
- Includes “Do not modify …” guards to avoid regressions.  
- Ends with instructions to run `mix test`.

### Prompt 1 – A1: Mix Scaffold

```text
# Prompt 1: Scaffold Mix project
Goal:
- Create a new Elixir library project called `prompt_vault`.
- Elixir version: "~> 1.17".
- OTP: "~> 26".
- Add the following dev/test deps:
  - {:mimic, "~> 1.7", only: :test}
  - {:ex_doc, "~> 0.33", only: :dev, runtime: false}
  - {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
  - {:dialyxir, "~> 1.4", only: [:dev], runtime: false}

Requirements:
- `mix new prompt_vault --sup` so we get an application module (needed later).
- Configure `.formatter.exs` with print_width: 80 and import_deps: [:ecto, :phoenix].
- Add `{:ok, _}` guard to `application/0` to avoid warnings.
- Ensure `mix test` passes (should be zero tests).

Output:
- Modified file list.
- Command snippet to run the test suite.

Do NOT implement any library code yet.
```

### Prompt 2 – A2: GitHub Actions CI

```text
# Prompt 2: Add GitHub Actions CI
Goal:
- Add `.github/workflows/ci.yml` running on push + PR.
- Steps:
  - Checkout
  - Setup Elixir (1.17) + OTP 26 + caching
  - Run `mix deps.get`, `mix compile --warnings-as-errors`, `mix test`
  - Run `mix format --check-formatted`
  - Run `mix credo --strict`
  - Run `mix dialyzer`

Acceptance:
- Workflow file committed.
- Local `mix test` still green.

Note: dialyzer will be empty for now; add PLT caching to speed up.
```

### Prompt 3 – B1: Context Struct

```text
# Prompt 3: Implement PromptVault.Context struct
Goal:
- Create `lib/prompt_vault/context.ex`.
- Define struct with the fields from the PRD (model, temperature, max_tokens,
  messages, token_counter, compaction_strategy, token_count) with default nil/[].
- Add `@opaque t :: %__MODULE__{...}` and typedocs for each field.
- Make `messages` default to [].
- No functions yet.

Test:
- Add `test/prompt_vault/context_test.exs` asserting that
  `%PromptVault.Context{}` has defaults (messages == []).

All tests must pass.
```

### Prompt 4 – B2: new/1

```text
# Prompt 4: Implement PromptVault.new/1
Goal:
- Create `lib/prompt_vault.ex` as public facade module.
- Implement `@spec new(keyword) :: t` returning %Context{}.
- Accept opts for model, temperature, max_tokens, token_counter,
  compaction_strategy; unknown keys raise ArgumentError.
- Defaults:
  - messages: []
  - token_count: nil (not yet computed)

Testing:
- Update context_test to cover new/1 defaults and happy path.
- Ensure calling `PromptVault.new(model: "gpt-4o")` sets model.

No side effects, pure function.

All tests green, Credo passes strict mode.
```

### Prompt 5 – B3: Inspect Protocol

```text
# Prompt 5: Implement Inspect protocol for Context
Goal:
- Add Inspect implementation exactly as specified in the PRD.
- Write unit test asserting `inspect/1` output matches
  "#PromptVault<model=\"gpt-4o\" msgs=0 tokens≈nil>".

Constraints:
- Do not expose full messages list.
- Use IO.iodata based concat as in PRD.

Run mix test – all green.
```

### Prompt 6 – C1 → Message Behaviour

```text
# Prompt 6: Define PromptVault.Message behaviour
Goal:
- Create `lib/prompt_vault/message/behaviour.ex` (namespace PromptVault.Message).
- Callbacks:
  role(t) :: atom
  raw(t) :: any
  rendered(t, assigns :: map) :: iodata
  template_engine(t) :: atom | nil

No implementation structs yet.

Add doctest showing minimal behaviour definition.

Mix test must remain green.
```

### Prompt 7 – C2: PromptMessage Variant

```text
# Prompt 7: Implement PromptMessage variant
Goal:
- Create `lib/prompt_vault/message/prompt_message.ex`.
- Struct fields (role, raw, template, engine, assigns).
- `role` limited to :system | :user | :assistant (validate in constructor).
- Public constructor `new/3` returning {:ok, msg} | {:error, reason}.
- Implement behaviour callbacks:
  - role/1 returns atom
  - raw/1 returns raw
  - template_engine/1 returns engine
  - rendered/2: if template nil, return raw; else call TemplateEngine behaviour
    (will be stubbed for now).

Testing:
- Tests for happy path and invalid role returns {:error, :invalid_role}.
- Use Mimic to stub TemplateEngine.render/2 returning "Rendered".

Keep Logger.warning/2 for unknown engine.

All tests green.
```

### Prompt 8 – C3: add_message/4 API

```text
# Prompt 8: Public API add_message/4
Goal:
- Implement `PromptVault.add_message/4`
  @spec add_message(t, role, raw, keyword) :: {:ok, t} | {:error, reason}
- Delegates to PromptMessage.new/3.
- On success, append to context.messages in order and return updated context.
- On error, pass through.

Testing:
- Unit test: build ctx via new/1, add two messages, assert length 2.
- Ensure original context remains unchanged (immutability).

All tests green.
```

### Prompt 9 – D1 → ToolCallMessage Variant

```text
# Prompt 9: Implement ToolCallMessage
Goal:
- Add struct with fields: role (always :tool), tool, args, response_schema,
  raw, template, engine, assigns.
- Implement behaviour callbacks similar to PromptMessage.
- Constructor validates role is :tool.
- Update PromptVault.add_tool_call/5 to create and append.

Testing:
- Unit tests with Mimic stub for template engine.
```

### Prompt 10 – D2 → MediaMessage Variant

```text
# Prompt 10: Implement MediaMessage
Goal:
- Struct: role (:media), mime_type, url, raw, template, engine, assigns, size.
- Constructor validates role.
- Public API add_media/5.

Testing: happy path, immutability check.
```

### Prompt 11 – E1…E3: TemplateEngine Behaviour + EExEngine

```text
# Prompt 11: TemplateEngine behaviour + EExEngine
Goal:
1. Behaviour (lib/prompt_vault/template_engine/behaviour.ex)
   - render(template_src, assigns) :: iodata

2. EExEngine adapter:
   - Supports {:inline, string} and {:file, path}; {:module, mod} TBD later.
   - Render with EEx, pass assigns.
   - Unknown tuple shape -> {:error, :template_not_found}

3. Wire into PromptMessage/ToolCall/MediaMessage.rendered/2.

Testing:
- Unit tests rendering inline template returning "Hello Ada".
- Mimic not needed; use real EEx.

Logger: on error, Logger.warning/2 with metadata template_src.

All tests green.
```

### Prompt 12 – F1 → TokenCounter Behaviour + Stub

```text
# Prompt 12: TokenCounter behaviour + Stub adapter
Goal:
- Behaviour module with callback count(model, iodata) :: non_neg_integer.
- Stub adapter returns byte_size(IO.iodata_to_binary(iodata)).

Testing:
- Direct unit test.

No public API wiring yet.
```

### Prompt 13 – G1: token_count/1 with Caching

```text
# Prompt 13: token_count/1 implementation
Goal:
- Implement PromptVault.token_count/1
  - If ctx.token_count present -> return cached.
  - Else call TokenCounter.count/2 via ctx.token_counter.
  - Return new context with cache updated.
  - Unknown counter -> {:error, :token_counter_not_set}

Testing:
- Use Mimic to stub TokenCounter.count/2 returning 42.
- Verify second call uses cached value (Mimic.expect called once).

All tests green.
```

### Prompt 14 – H1: render/1 Pipeline

```text
# Prompt 14: Implement PromptVault.render/1
Goal:
- For each message in ctx.messages call rendered/2 (assigns in struct).
- Join into IOData list in original order.
- Return iodata (NOT string).

Testing:
- Build context with mixed template/no-template messages.
- Assert IO.iodata_to_binary/1 output contains rendered strings in order.
```

### Prompt 15 – I1…I3: Compaction Behaviour + SummarizeHistory

```text
# Prompt 15: Compaction behaviour + SummarizeHistory strategy
Goal:
1. Behaviour: compact(context, opts) :: {:ok, context} | {:error, reason}.
2. SummarizeHistory:
   - Preserve first :system message.
   - Requires opts[:summarizer] (fn -> binary).
   - Summarize remaining messages (pass them in).
   - Insert new PromptMessage role: :assistant, tag :summary (raw field).
   - Drop originals.
3. Failure when no summarizer -> {:error, :no_summarizer}.

Testing:
- Use Mimic to stub summarizer fn returning "TL;DR".
- Verify messages length reduced, first system + summary only.

Logger: warning when compaction tried with empty history.
```

### Prompt 16 – J1: Public compact/3

```text
# Prompt 16: Public API compact/3
Goal:
- PromptVault.compact(context, strategy \\ nil, opts \\ []).
- Choose strategy param else ctx.compaction_strategy else default.
- Run behaviour, bubble result.
- On {:ok, new_ctx} reset token_count to nil (needs recount later).

Testing:
- Use Mimic summarizer, ensure token_count cleared.
```

### Prompt 17 – K1 → LiquidEngine Adapter

```text
# Prompt 17: Implement LiquidEngine adapter
Goal:
- Add optional dep {:ex_liquid, "~> 0.7"} in mix.exs, only if available.
- LiquidEngine.render/2 supports {:inline, str} and {:file, path}.
- Update engine selection clause to pick between :eex | :liquid.

Testing:
- Conditional tests only run if ExLiquid loaded (use Module.loaded?/1).
```

### Prompt 18 – K2: Mixed Engine Integration Test

```text
# Prompt 18: Integration test with EEx + Liquid
Goal:
- Build context mixing both template engines, render/1, assert combined output.

No new code, just test.
```

### Prompt 19 – L1 → Docs & Hex

```text
# Prompt 19: Documentation pass
Goal:
- Add comprehensive moduledocs for PromptVault, Context, behaviours.
- Add doctests.
- Ensure mix docs runs without warnings.

No functional code changes.
```

### Prompt 20 – L2: README, CHANGELOG, Publish Config

```text
# Prompt 20: Final polish
Goal:
- Complete README with example usage from PRD.
- Add CHANGELOG.md.
- Set `@version "0.1.0"` in mix.exs, licenses, links.
- Update CI to run `mix docs` artifact upload.

Run mix test to confirm green.
```

---

These 20 prompts walk the code-generation LLM from zero to a fully functional, documented, and test-covered PromptVault library with no large jumps in complexity and continuous verification at every stage.