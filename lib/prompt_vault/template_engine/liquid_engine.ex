defmodule PromptVault.TemplateEngine.LiquidEngine do
  @moduledoc """
  Liquid template engine implementation for PromptVault.

  This engine requires the optional `liquid` dependency to be available.
  If not available, all render calls will return an error.

  Supports the same template source formats as EExEngine:
  - `{:inline, template_string}` - Inline Liquid template
  - `{:file, file_path}` - Template from file
  - `{:module, module}` - Template from module's render/1 function
  """

  @behaviour PromptVault.TemplateEngine

  @impl true
  def render(template_source, assigns) do
    if Code.ensure_loaded?(Liquid) do
      do_render(template_source, assigns)
    else
      {:error, :liquid_not_available}
    end
  end

  defp do_render({:inline, template}, assigns) when is_binary(template) do
    try do
      case Liquid.parse(template) do
        {:ok, parsed} ->
          result = Liquid.render(parsed, assigns)
          {:ok, result}

        {:error, reason} ->
          {:error, {:parse_error, reason}}
      end
    rescue
      exception ->
        {:error, exception}
    end
  end

  defp do_render({:file, file_path}, assigns) when is_binary(file_path) do
    try do
      case File.read(file_path) do
        {:ok, content} ->
          case Liquid.parse(content) do
            {:ok, parsed} ->
              result = Liquid.render(parsed, assigns)
              {:ok, result}

            {:error, reason} ->
              {:error, {:parse_error, reason}}
          end

        {:error, reason} ->
          {:error, {:file_error, reason}}
      end
    rescue
      exception ->
        {:error, exception}
    end
  end

  defp do_render({:module, module}, assigns) when is_atom(module) do
    try do
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
  end

  defp do_render(template_source, _assigns) do
    {:error, {:invalid_template_source, template_source}}
  end
end
