defmodule PromptVault.TemplateEngine.EExEngine do
  @moduledoc """
  EEx template engine implementation for PromptVault.

  Supports three template source formats:
  - `{:inline, template_string}` - Inline EEx template
  - `{:file, file_path}` - Template from file
  - `{:module, module}` - Template from module's render/1 function
  """

  @behaviour PromptVault.TemplateEngine

  @impl true
  def render(template_source, assigns)

  def render({:inline, template}, assigns) when is_binary(template) do
    result = EEx.eval_string(template, assigns: assigns)
    {:ok, result}
  rescue
    exception ->
      {:error, exception}
  end

  def render({:file, file_path}, assigns) when is_binary(file_path) do
    case File.read(file_path) do
      {:ok, content} ->
        result = EEx.eval_string(content, assigns: assigns)
        {:ok, result}

      {:error, reason} ->
        {:error, {:file_error, reason}}
    end
  rescue
    exception ->
      {:error, exception}
  end

  def render({:module, module}, assigns) when is_atom(module) do
    if function_exported?(module, :render, 1) do
      result = module.render(assigns)
      {:ok, result}
    else
      {:error, {:no_render_function, module}}
    end
  rescue
    exception ->
      {:error, exception}
  end

  def render(template_source, _assigns) do
    {:error, {:invalid_template_source, template_source}}
  end
end
