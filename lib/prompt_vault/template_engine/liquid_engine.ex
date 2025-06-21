defmodule PromptVault.TemplateEngine.LiquidEngine do
  @moduledoc """
  Liquid template engine implementation for PromptVault using Solid.

  This engine requires the optional `solid` dependency to be available.
  If not available, all render calls will return an error.

  Supports the same template source formats as EExEngine:
  - `{:inline, template_string}` - Inline Liquid template
  - `{:file, file_path}` - Template from file
  - `{:module, module}` - Template from module's render/1 function
  """

  @behaviour PromptVault.TemplateEngine

  @impl true
  def render(template_source, assigns) do
    # Validate template source format first
    case validate_template_source(template_source) do
      :ok ->
        if Code.ensure_loaded?(Solid) do
          do_render(template_source, assigns)
        else
          {:error, :liquid_not_available}
        end

      {:error, reason} ->
        {:error, reason}
    end
  end

  defp validate_template_source({:inline, template}) when is_binary(template), do: :ok
  defp validate_template_source({:file, file_path}) when is_binary(file_path), do: :ok
  defp validate_template_source({:module, module}) when is_atom(module), do: :ok

  defp validate_template_source(template_source),
    do: {:error, {:invalid_template_source, template_source}}

  defp do_render({:inline, template}, assigns) when is_binary(template) do
    case Solid.parse(template) do
      {:ok, parsed} ->
        string_assigns = convert_assigns_to_strings(assigns)

        case Solid.render(parsed, string_assigns) do
          {:ok, result} -> {:ok, IO.iodata_to_binary(result)}
          {:error, reason} -> {:error, {:render_error, reason}}
        end

      {:error, reason} ->
        {:error, {:parse_error, reason}}
    end
  rescue
    exception ->
      {:error, exception}
  end

  defp do_render({:file, file_path}, assigns) when is_binary(file_path) do
    case File.read(file_path) do
      {:ok, content} ->
        render_liquid_content(content, assigns)

      {:error, reason} ->
        {:error, {:file_error, reason}}
    end
  rescue
    exception ->
      {:error, exception}
  end

  defp render_liquid_content(content, assigns) do
    case Solid.parse(content) do
      {:ok, parsed} ->
        string_assigns = convert_assigns_to_strings(assigns)

        case Solid.render(parsed, string_assigns) do
          {:ok, result} -> {:ok, IO.iodata_to_binary(result)}
          {:error, reason} -> {:error, {:render_error, reason}}
        end

      {:error, reason} ->
        {:error, {:parse_error, reason}}
    end
  end

  defp do_render({:module, module}, assigns) when is_atom(module) do
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

  defp do_render(template_source, _assigns) do
    {:error, {:invalid_template_source, template_source}}
  end

  # Solid expects string keys in assigns, so convert atom keys to strings
  defp convert_assigns_to_strings(assigns) when is_map(assigns) do
    for {key, value} <- assigns, into: %{} do
      string_key = if is_atom(key), do: Atom.to_string(key), else: key
      {string_key, convert_assigns_to_strings(value)}
    end
  end

  defp convert_assigns_to_strings(assigns) when is_list(assigns) do
    Enum.map(assigns, &convert_assigns_to_strings/1)
  end

  defp convert_assigns_to_strings(assigns), do: assigns
end
