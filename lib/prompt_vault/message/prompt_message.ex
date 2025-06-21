defmodule PromptVault.Message.PromptMessage do
  @moduledoc """
  A basic prompt message with role, content, and optional template processing.

  This is the primary message type for user, assistant, and system messages.
  """

  @behaviour PromptVault.Message

  @enforce_keys [:role, :raw]
  defstruct [
    :role,
    :raw,
    template: nil,
    engine: nil,
    assigns: %{}
  ]

  @type t :: %__MODULE__{
          role: atom(),
          raw: any(),
          template: tuple() | nil,
          engine: atom() | nil,
          assigns: map()
        }

  @impl true
  def role(%__MODULE__{role: role}), do: role

  @impl true
  def raw(%__MODULE__{raw: raw}), do: raw

  @impl true
  def template_engine(%__MODULE__{engine: engine}), do: engine

  @impl true
  def rendered(%__MODULE__{template: nil, raw: raw}, _assigns), do: raw

  def rendered(%__MODULE__{template: template, engine: engine, assigns: msg_assigns}, assigns) do
    merged_assigns = Map.merge(msg_assigns, assigns)
    
    case get_engine_module(engine) do
      {:ok, engine_module} ->
        case engine_module.render(template, merged_assigns) do
          {:ok, result} -> result
          {:error, _reason} = error -> error
        end
      
      {:error, _reason} = error ->
        error
    end
  end

  defp get_engine_module(nil), do: {:error, {:unknown_engine, nil}}
  defp get_engine_module(:eex), do: {:ok, PromptVault.TemplateEngine.EExEngine}
  defp get_engine_module(:liquid), do: {:ok, PromptVault.TemplateEngine.LiquidEngine}
  defp get_engine_module(engine) when is_atom(engine), do: {:ok, engine}
  defp get_engine_module(engine), do: {:error, {:unknown_engine, engine}}
end
