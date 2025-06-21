# PromptVault – Product Requirements Document (PRD)

**Created:** June 21 2025
**Status:** Final

---

## 1. Purpose & Scope

PromptVault is an Elixir utility package that provides a single, immutable data structure—`PromptVault.Context`—for building, inspecting, and token‑aware compaction of message histories destined for large language model (LLM) calls. The library is model‑agnostic and template‑engine‑agnostic, supports embedded tool calls and media references, and exposes an idiomatic, pipe‑friendly API so developers can treat prompt construction as first‑class data.

---

## 2. Objectives

| Objective                   | Detail                                                                             |                                                     |
| --------------------------- | ---------------------------------------------------------------------------------- | --------------------------------------------------- |
| 🗂 **Unified context**      | Manage system, user, assistant, tool‑call, and media messages in one struct.       |                                                     |
| ⚙️ **Model‑agnostic**       | No hard dependency on any LLM vendor; callers supply token counter and summarizer. |                                                     |
| 🛠 **Extensible**           | Behaviours for token counting, compaction, and template rendering.                 |                                                     |
| 📏 **Token‑aware**          | Fast token accounting to help callers respect `max_tokens`.                        |                                                     |
| ♻️ **Explicit compaction**  | Never auto‑mutate; compaction happens only when the caller invokes it.             |                                                     |
| 🧪 **Idiomatic & testable** | Pure functions, \`{\:ok, value}                                                    |  {\:error, reason}\` returns, ExUnit + Mimic tests. |

---

## 3. Core Data Structures

### 3.1 `PromptVault.Context`

| Field                 | Type              | Notes                                  |                                      |                     |
| --------------------- | ----------------- | -------------------------------------- | ------------------------------------ | ------------------- |
| `model`               | \`atom            |  String.t                              |  nil\`                               | Informational only. |
| `temperature`         | \`float           |  nil\`                                 | Optional generation param.           |                     |
| `max_tokens`          | \`pos\_integer    |  nil\`                                 | Advisory ceiling.                    |                     |
| `messages`            | `[Message.t]`     | Ordered oldest → newest.               |                                      |                     |
| `token_counter`       | `module`          | Implements `PromptVault.TokenCounter`. |                                      |                     |
| `compaction_strategy` | \`module          |  {module, opts}\`                      | Implements `PromptVault.Compaction`. |                     |
| `token_count`         | `non_neg_integer` | Cached lazily.                         |                                      |                     |

The struct is opaque; callers use the public API.

### 3.2 Message Variants

All message variants implement `PromptVault.Message` behaviour:

```elixir
@callback role(t) :: atom
@callback raw(t) :: any
@callback rendered(t, assigns :: map) :: iodata
@callback template_engine(t) :: atom | nil
```

| Variant             | Required Fields                                                                         | Optional Fields                         |
| ------------------- | --------------------------------------------------------------------------------------- | --------------------------------------- |
| **PromptMessage**   | `role` `:system/:user/:assistant`, `raw`, `template`                                    | `engine`, `assigns`                     |
| **ToolCallMessage** | `role :tool`, `tool` (atom/string), `args` (map), `response_schema` (map/string), `raw` | `template`, `engine`, `assigns`         |
| **MediaMessage**    | `role :media`, `mime_type`, `url`, `raw`                                                | `template`, `engine`, `assigns`, `size` |

#### 3.2.1 Template Source Tuple

* `{:inline, String.t}`
* `{:file, Path.t}`
* `{:module, Module.t}`

If `template == nil`, `raw` is used verbatim.

---

## 4. Behaviours & Default Adapters

| Behaviour          | Callback(s)                                 | Default                                            |                                           |
| ------------------ | ------------------------------------------- | -------------------------------------------------- | ----------------------------------------- |
| **TokenCounter**   | `count(model, iodata) :: non_neg_integer`   | `PromptVault.TokenCounter.Tiktoken` (optional dep) |                                           |
| **Compaction**     | \`compact(context, opts) :: {\:ok, context} | {\:error, reason}\`                                | `PromptVault.Compaction.SummarizeHistory` |
| **TemplateEngine** | `render(template_src, assigns) :: iodata`   | `EExEngine`, `LiquidEngine`                        |                                           |

### 4.1 SummarizeHistory Strategy

1. Preserve the **first** system message.
2. Summarize remaining messages via caller‑supplied `summarizer.(messages)`.
3. Insert one `PromptMessage` with `role: :assistant`, tag `:summary`, containing the summary text.
4. Drop originals.
   Errors if no summarizer is configured: `{:error, :no_summarizer}`.

---

## 5. Inspect Protocol

```elixir
defimpl Inspect, for: PromptVault.Context do
  import Inspect.Algebra
  def inspect(%PromptVault.Context{} = ctx, opts) do
    concat([
      "#PromptVault<",
      "model=", to_doc(ctx.model, opts),
      " msgs=", to_doc(length(ctx.messages), opts),
      " tokens≈", to_doc(ctx.token_count, opts),
      maybe(" temp", ctx.temperature, opts),
      maybe(" max", ctx.max_tokens, opts),
      ">"
    ])
  end
  defp maybe(_, nil, _), do: ""
  defp maybe(label, value, opts), do: concat([label, "=", to_doc(value, opts)])
end
```

Displays a concise one‑liner while avoiding full message dumps.

---

## 6. Public API (Pipe‑Friendly)

```elixir
defmodule PromptVault do
  @spec new(keyword) :: t
  @spec put_model(t, atom | String.t) :: t
  @spec put_opts(t, keyword) :: t

  @spec add_message(t, role, raw, keyword) ::
          {:ok, t} | {:error, reason}
  @spec add_tool_call(t, tool, args, response_schema, keyword) ::
          {:ok, t} | {:error, reason}
  @spec add_media(t, mime, url, keyword) ::
          {:ok, t} | {:error, reason}

  @spec render(t) :: iodata
  @spec token_count(t) :: non_neg_integer
  @spec compact(t, strategy \\ nil, opts \\ []) ::
          {:ok, t} | {:error, reason}
end
```

All mutators are pure and return `{:ok, context}` on success.

---

## 7. Error Handling

| Reason                   | Condition                         |
| ------------------------ | --------------------------------- |
| `:unknown_engine`        | Unsupported template engine.      |
| `:template_not_found`    | File/module missing.              |
| `:token_counter_not_set` | `token_count/1` without counter.  |
| `:no_summarizer`         | Compaction without summarizer.    |
| Exception structs        | Template rendering failures, etc. |

---

## 8. Testing Strategy

* **Unit tests** – ExUnit covering builders, rendering, compaction, error paths.
* **Mocking** – **Mimic** stubs for `TokenCounter` and summarizer behaviours.
* **Integration tests** – Full `render/1`, `token_count/1`, `compact/2` happy paths.
* **Regression fixtures** – Static templates/messages ensure output stability.
* **Concurrency check** – `Task.async_stream` to confirm thread safety.

Property tests are explicitly omitted.

---

## 9. Project Structure

```
lib/
  prompt_vault.ex
  context.ex
  message/
    prompt_message.ex
    tool_call_message.ex
    media_message.ex
  token_counter/
    behaviour.ex
    tiktoken.ex
  template_engine/
    behaviour.ex
    eex_engine.ex
    liquid_engine.ex
  compaction/
    behaviour.ex
    summarize_history.ex
test/
  ...
```

`mix docs` builds Hex‑ready documentation.

---

## 10. Example Usage

```elixir
alias PromptVault, as: PV

{:ok, ctx} =
  PV.new(model: "gpt-4o", temperature: 0.8, token_counter: MyCounter)
  |> PV.add_message(:system, "You are helpful", [])
  |> PV.add_message(:user, "Hello {{name}}",
        engine: :liquid, assigns: %{name: "Ada"})
  |> PV.add_tool_call(:weather, %{city: "Berlin"},
        %{type: "object", properties: %{...}}, [])

{:ok, ctx} = PV.compact(ctx)

iodata = PV.render(ctx)
tokens = PV.token_count(ctx)
```

---

## 13. Non‑Goals

* Automatic compaction triggered by token overflow.
* Built‑in network calls to any LLM provider.
* State‑ful message mutation (all structs are immutable).