Below is a **three-pass planning sequence** that converges from a high-level architectural blueprint down to **bite-sized, test-first implementation prompts**.
Each pass:

1. **Pass A – Blueprint** → strategic roadmap & architectural principles.
2. **Pass B – Coarse Chunks** → 7 vertical “slices” you could finish in a day.
3. **Pass C – Fine-grained Steps** → safely-deliverable tickets (<½ day each).

Finally, a **Prompt Pack** supplies ready-to-paste instructions for a code-gen LLM; every prompt is wrapped in a `text` code fence, builds on the previous one, and ends fully integrated & tested.

---

## **PASS A – Architectural Blueprint**

| Phase                        | Goal                                                                     | Deliverables                                                                                              | Notes on Robustness ▶︎Scalability ▶︎Testability                               |
| ---------------------------- | ------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| **0. Bootstrap**             | Create Mix project `prompt_vault`, setup CI, formatter, credo, dialyzer. | GitHub Actions, `.formatter.exs`, config skeleton.                                                        | Establish quality gates early.                                                |
| **1. Core Behaviours**       | Contract-first design.                                                   | `PromptVault.Message`, `TokenCounter`, `Compaction`, `TemplateEngine` behaviours + minimal default stubs. | Pure callbacks, no state → trivially unit-testable.                           |
| **2. Message Variants**      | Immutable structs implementing `Message`.                                | `PromptMessage`, `ToolCallMessage`, `MediaMessage` + factories.                                           | Enforce roles at compile-time with `@enforce_keys`, pattern-match role atoms. |
| **3. Context Kernel**        | Opaque, pipe-able `PromptVault.Context` struct & builder API.            | `PromptVault` module (`new/1`, `add_*` etc.), Inspect protocol.                                           | Internal invariants guarded with guards & typespecs.                          |
| **4. Rendering Sub-system**  | Transform → template-engine-agnostic IO lists.                           | `TemplateEngine.Behaviour`, `EExEngine`, `LiquidEngine`; `Context.render/1`.                              | All engines mocked with Mimic in tests; use Boundaries to isolate.            |
| **5. Token Accounting**      | Pluggable, cached token counting.                                        | `TokenCounter.Tiktoken`, `Context.token_count/1`.                                                         | Cache in struct, recompute lazily, ETS optional for multi-node share.         |
| **6. Compaction Strategies** | Opt-in `compact/3` pipeline.                                             | `Compaction.SummarizeHistory` default.                                                                    | Summarizer passed as MFA or anonymous fun – easy to Mimic.                    |
| **7. Observability**         | Unified logging, telemetry.                                              | `:telemetry` events, `Logger.warning/2` on recoverable issues.                                            | Tie into Phoenix/LiveDashboard if embedded.                                   |
| **8. Docs & Packaging**      | Hex-ready docs, CHANGELOG, semver gating.                                | `mix docs`, `CHANGELOG.md`, `UPGRADE_GUIDE.md`.                                                           | Docs are tested with `mix doctest`.                                           |

Robustness comes from **pure data**, explicit opts, and OTP only for **telemetry aggregation** if needed (GenServer). Multi-node safety: structs are serialisable; counting cache is per-process.

---

## **PASS B – Coarse Iterative Chunks**

| #     | Vertical Slice                        | Acceptance Criteria                                                          |
| ----- | ------------------------------------- | ---------------------------------------------------------------------------- |
| **1** | *Project Skeleton & CI*               | `mix test` passes zero tests; credo & dialyzer run in CI.                    |
| **2** | *Behaviours & Default No-ops*         | Specs compile; behaviours have exhaustive docs & doctests.                   |
| **3** | *Message Structs Implement Behaviour* | Pattern matching ensures only allowed roles; doctests render trivial output. |
| **4** | *Context Construction API*            | `PromptVault.new/1`, `add_message/4` happy-path unit tests green.            |
| **5** | *Template Engines & Render Pipeline*  | Both EEx & Liquid render; Mimic-based negative tests pass.                   |
| **6** | *Token Counter Integration*           | Stub counter + real `Tiktoken` (optional). Cache verified by test timing.    |
| **7** | *Compaction Strategy & Telemetry*     | SummarizeHistory shrinks >N messages; telemetry event emitted.               |

Each slice delivers value, increments version (e.g. 0.1.0 → 0.2.0…).

---

## **PASS C – Fine-grained Safe Steps**

Below, every coarse slice is decomposed into 3-5 micro-steps (\~60-90 LoC + tests).
Example for Slice 3 (*Message Structs*):

| Step | Task                                                | Tests                                    |
| ---- | --------------------------------------------------- | ---------------------------------------- |
| 3.1  | Define `PromptVault.Message` behaviour + doc spec.  | Behaviour functions return `@impl true`. |
| 3.2  | Implement `PromptMessage` struct with `@behaviour`. | Role guard raises on invalid atom.       |
| 3.3  | Add `ToolCallMessage` struct.                       | JSON schema field optionality tests.     |
| 3.4  | Add `MediaMessage` struct.                          | MIME detection helper unit test.         |
| 3.5  | Shared factory `build_message/2` for tests.         | Factory round-trips via Inspect.         |

Repeat for other slices until all have bite-sized tickets; no step introduces more than one new public function **and** one new file unless trivial.

---

### **Right-Sizing Review**

* Every step compiles & its tests pass in <10 s.
* No step requires simultaneous code & test edits in >3 files.
* Each step ends with Git commit pointers (`feat(context): add compact/3`).
* Logger calls only appear after error handling is proven (test asserts on `capture_log`).

---

## **PROMPT PACK – TDD-Ready Code-Gen Instructions**

Paste each *prompt* into your LLM (e.g. `#pr:3.2`) in order.
Prompts assume the repository already contains everything from previous steps.

---

<details>
<summary>Click to expand prompts</summary>

```text
#pr:1.1  🎯 Bootstrap project
You are ChatGPT acting as an Elixir engineer.
Write code to:
  • run `mix new prompt_vault --sup`.
  • add :credo, :dialyxir, :mimic, and :ex_doc to mix.exs (only in :dev/:test where appropriate).
  • configure preferred CLI env so `mix qa` runs tests + credo + dialyzer.
  • create a minimal GitHub Actions workflow (elixir-setup, cache mix, run `mix qa`).
Generate ONLY the changed/added files with proper content. End with green `mix test`.

Tests: Create a placeholder test that always passes (`assert true`).
```

```text
#pr:1.2  🎯 Formatter + git hooks
Add `.formatter.exs` enforcing 2-space indent, no parens in 'def' macros.
Set up a pre-commit hook (husky mix task) that runs `mix format --check-formatted`.
Return only new/modified files.
```

```text
#pr:2.1  🎯 Define core behaviours
Create `lib/prompt_vault/message.ex`, `lib/prompt_vault/token_counter/behaviour.ex`,
`lib/prompt_vault/compaction/behaviour.ex`, `lib/prompt_vault/template_engine/behaviour.ex`.
Each behaviour:
  * Uses `@callback` specs exactly as in the PRD.
  * Provides default `defmodule ...Stub` that raises `:not_implemented`.

Tests: Ensure behaviour callbacks exist (`function_exported?/3`), and default stubs raise.
```

```text
#pr:3.1  🎯 PromptMessage struct
Implement `PromptVault.Message` behaviour with `PromptVault.Message.Prompt`.
  * Enforce keys: `[:role, :raw]`.
  * Accepts optional `template`, `engine`, `assigns`.
  * `role` limited to `:system | :user | :assistant`.
Unit tests:
  * Constructor returns struct.
  * Invalid role returns `{:error, :invalid_role}`.
  * `rendered/2` uses `raw` when `template == nil`.
```

```text
#pr:3.2  🎯 ToolCallMessage struct
Add `PromptVault.Message.ToolCall`:
  * Required: `role :tool`, `tool`, `args`, `response_schema`, `raw`.
  * Optional template/engine/assigns same as above.
  * `rendered/2` returns JSON string of `args` by default.
Tests cover happy & sad paths.
```

```text
#pr:3.3  🎯 MediaMessage struct
Add `PromptVault.Message.Media`:
  * Required: `role :media`, `mime_type`, `url`, `raw`.
  * Optional `size` in bytes.
  * `rendered/2` returns the URL.
Tests verify MIME must include “/”.
```

```text
#pr:3.4  🎯 Message factory for tests
Introduce `test/support/message_factory.ex` using `ExUnit.CaseTemplate`.
Provide helpers `system_msg/1`, `user_msg/1`, etc.
Refactor previous tests to use factory.
```

```text
#pr:4.1  🎯 Context struct + new/1
Implement opaque `PromptVault.Context` + `PromptVault.new/1`.
  * Fields and defaults as per PRD.
  * Provide `put_model/2`, `put_opts/2`.
  * Guard against unsupported keys.
Doc-tests that inspect output matches `#PromptVault<...>` shape.
```

```text
#pr:4.2  🎯 add_message/4
Implement `add_message/4` that appends to messages list and returns `{:ok, context}`.
  * Accepts struct implementing `Message` OR raw params + opts.
  * Update `token_count` cache to :dirty (nil) on change.
Unit tests ensure immutability (original context unchanged).
```

```text
#pr:5.1  🎯 TemplateEngine behaviour + EExEngine
Implement `TemplateEngine.EEx` that compiles & renders inline/file templates securely.
Add `TemplateEngine.Liquid` stub (todo).
Integrate into `rendered/2` implementations of message structs.
Tests stub engine with Mimic to assert dispatch.
```

```text
#pr:5.2  🎯 Context.render/1
Concatenate rendered iodata of all messages separated by newlines.
Return iodata (not binary).
Test with mixed message types and engines.
```

```text
#pr:6.1  🎯 TokenCounter.Tiktoken adapter
Wrap `:tiktoken` if available, else raise `:tiktoken_not_loaded`.
`token_count/1`:
  * Computes count lazily, caches inside struct.
  * Accepts injected counter in context.
Tests:
  * Mimic counter returning deterministic value.
  * Cache hit measured via self() message tracking.
```

```text
#pr:7.1  🎯 Compaction.SummarizeHistory
Implement strategy exactly as PRD.
  * Accepts `summarizer` fun in opts.
  * Inserts summary assistant message tagged `summary`.
Telemetry: emit `[:prompt_vault, :compact, :complete]` event with old/new token delta.
Tests cover no-summarizer error path.
```

```text
#pr:7.2  🎯 Logger + Telemetry hooks
Instrument key functions (`add_message`, `compact`) with Telemetry.
Use `Logger.warning/2` when non-fatal errors occur (e.g., unknown engine).
Tests capture telemetry & log events.
```

```text
#pr:8.1  🎯 Documentation & Mix tasks
Add `mix docs` config, module @moduledoc examples, README snippet.
Each public function has doctest.
```

</details>

---

### **How to Use the Prompt Pack**

1. Paste **#pr:1.1** into your code-generation LLM; commit the patch.
2. Run `mix qa` locally; ensure green.
3. Continue with **#pr:1.2**, and so on.
4. Each prompt ends fully wired; no dangling code.

> **Rule of Thumb:**
> *If a step fails tests, fix the previous prompt before moving on.*
> The sequence enforces incrementalism, keeps blast radius minimal, and guarantees that by the end of **#pr:8.1** the package is Hex-publish-ready, fully tested, and observable.

Happy building!
