defmodule PromptVault.TemplateEngine do
  @moduledoc """
  Behaviour for template engine implementations.

  Template engines are responsible for rendering templates with assigns.
  They support different template sources like inline strings, files, and modules.
  """

  @type t :: term()

  @doc """
  Renders a template with the given assigns.

  Template sources can be:
  - `{:inline, string}` - Inline template string
  - `{:file, path}` - Template file path
  - `{:module, module}` - Module with render/1 function
  """
  @callback render(template_source :: any, assigns :: map) :: {:ok, iodata} | {:error, reason :: any}
end
