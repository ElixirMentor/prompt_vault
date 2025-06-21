defmodule PromptVault.TemplateEngine.LiquidEngineTest do
  use ExUnit.Case, async: true
  # use Mimic

  alias PromptVault.TemplateEngine.LiquidEngine

  describe "when Liquid is not available" do
    test "returns error for any template source" do
      Code.stub(Code, :ensure_loaded?, fn Liquid -> false end)

      assert {:error, :liquid_not_available} = 
        LiquidEngine.render({:inline, "Hello {{ name }}!"}, %{name: "World"})
      
      assert {:error, :liquid_not_available} = 
        LiquidEngine.render({:file, "test.liquid"}, %{})
      
      assert {:error, :liquid_not_available} = 
        LiquidEngine.render({:module, TestModule}, %{})
    end
  end

  describe "inline templates with Liquid available" do
    setup do
      Code.stub(Code, :ensure_loaded?, fn Liquid -> true end)
      :ok
    end

    test "renders simple inline template" do
      template = "Hello {{ name }}!"
      assigns = %{name: "World"}

      Liquid.stub(Liquid, :parse, fn ^template -> {:ok, :parsed_template} end)
      Liquid.stub(Liquid, :render, fn :parsed_template, ^assigns -> "Hello World!" end)

      assert {:ok, "Hello World!"} = LiquidEngine.render({:inline, template}, assigns)
    end

    test "renders template with multiple variables" do
      template = "User {{ name }} is {{ age }} years old"
      assigns = %{name: "Alice", age: 30}

      Liquid.stub(Liquid, :parse, fn ^template -> {:ok, :parsed_template} end)
      Liquid.stub(Liquid, :render, fn :parsed_template, ^assigns -> "User Alice is 30 years old" end)

      assert {:ok, "User Alice is 30 years old"} = LiquidEngine.render({:inline, template}, assigns)
    end

    test "handles Liquid parse errors" do
      template = "Hello {{ name"  # Missing closing }}
      assigns = %{name: "World"}

      Liquid.stub(Liquid, :parse, fn ^template -> {:error, "Parse error"} end)

      assert {:error, {:parse_error, "Parse error"}} = LiquidEngine.render({:inline, template}, assigns)
    end

    test "handles Liquid render errors" do
      template = "Hello {{ name }}!"
      assigns = %{name: "World"}

      Liquid.stub(Liquid, :parse, fn ^template -> {:ok, :parsed_template} end)
      Liquid.stub(Liquid, :render, fn :parsed_template, ^assigns -> 
        raise "Render error!"
      end)

      assert {:error, %RuntimeError{message: "Render error!"}} = 
        LiquidEngine.render({:inline, template}, assigns)
    end

    test "validates template is a string" do
      assert {:error, {:invalid_template_source, {:inline, 123}}} = 
        LiquidEngine.render({:inline, 123}, %{})
    end
  end

  describe "file templates with Liquid available" do
    setup do
      Code.stub(Code, :ensure_loaded?, fn Liquid -> true end)
      :ok
    end

    test "renders template from file" do
      file_content = "Hello {{ name }}!"
      file_path = "/tmp/test_template.liquid"
      assigns = %{name: "File"}

      File.stub(File, :read, fn ^file_path -> {:ok, file_content} end)
      Liquid.stub(Liquid, :parse, fn ^file_content -> {:ok, :parsed_template} end)
      Liquid.stub(Liquid, :render, fn :parsed_template, ^assigns -> "Hello File!" end)

      assert {:ok, "Hello File!"} = LiquidEngine.render({:file, file_path}, assigns)
    end

    test "handles file read errors" do
      file_path = "/nonexistent/template.liquid"
      assigns = %{}

      File.stub(File, :read, fn ^file_path -> {:error, :enoent} end)

      assert {:error, {:file_error, :enoent}} = LiquidEngine.render({:file, file_path}, assigns)
    end

    test "handles Liquid parse errors in files" do
      file_content = "Hello {{ name"  # Missing closing }}
      file_path = "/tmp/bad_template.liquid"
      assigns = %{name: "World"}

      File.stub(File, :read, fn ^file_path -> {:ok, file_content} end)
      Liquid.stub(Liquid, :parse, fn ^file_content -> {:error, "Parse error"} end)

      assert {:error, {:parse_error, "Parse error"}} = LiquidEngine.render({:file, file_path}, assigns)
    end

    test "validates file path is a string" do
      assert {:error, {:invalid_template_source, {:file, :not_a_string}}} = 
        LiquidEngine.render({:file, :not_a_string}, %{})
    end
  end

  describe "module templates with Liquid available" do
    setup do
      Code.stub(Code, :ensure_loaded?, fn Liquid -> true end)
      :ok
    end

    test "renders template from module" do
      defmodule TestLiquidModule do
        def render(assigns) do
          "Hello #{assigns.name} from Liquid module!"
        end
      end

      assigns = %{name: "Module"}

      assert {:ok, "Hello Module from Liquid module!"} = 
        LiquidEngine.render({:module, TestLiquidModule}, assigns)
    end

    test "handles module without render function" do
      defmodule LiquidModuleWithoutRender do
        def other_function(assigns), do: assigns
      end

      assigns = %{}

      assert {:error, {:no_render_function, LiquidModuleWithoutRender}} = 
        LiquidEngine.render({:module, LiquidModuleWithoutRender}, assigns)
    end

    test "handles module render function errors" do
      defmodule LiquidModuleWithError do
        def render(_assigns) do
          raise "Liquid template error!"
        end
      end

      assigns = %{}

      assert {:error, %RuntimeError{message: "Liquid template error!"}} = 
        LiquidEngine.render({:module, LiquidModuleWithError}, assigns)
    end

    test "validates module is an atom" do
      assert {:error, {:invalid_template_source, {:module, "not_an_atom"}}} = 
        LiquidEngine.render({:module, "not_an_atom"}, %{})
    end
  end

  describe "template validation with Liquid available" do
    setup do
      Code.stub(Code, :ensure_loaded?, fn Liquid -> true end)
      :ok
    end

    test "rejects unknown template source formats" do
      assert {:error, {:invalid_template_source, {:unknown, "template"}}} = 
        LiquidEngine.render({:unknown, "template"}, %{})

      assert {:error, {:invalid_template_source, "just a string"}} = 
        LiquidEngine.render("just a string", %{})

      assert {:error, {:invalid_template_source, 123}} = 
        LiquidEngine.render(123, %{})
    end
  end

  describe "complex Liquid templates" do
    setup do
      Code.stub(Code, :ensure_loaded?, fn Liquid -> true end)
      :ok
    end

    test "renders template with filters" do
      template = "Hello {{ name | upcase }}!"
      assigns = %{name: "world"}

      Liquid.stub(Liquid, :parse, fn ^template -> {:ok, :parsed_template} end)
      Liquid.stub(Liquid, :render, fn :parsed_template, ^assigns -> "Hello WORLD!" end)

      assert {:ok, "Hello WORLD!"} = LiquidEngine.render({:inline, template}, assigns)
    end

    test "renders template with conditionals" do
      template = """
      {% if admin %}
      Welcome, admin!
      {% else %}
      Welcome, user!
      {% endif %}
      """
      assigns = %{admin: true}

      Liquid.stub(Liquid, :parse, fn ^template -> {:ok, :parsed_template} end)
      Liquid.stub(Liquid, :render, fn :parsed_template, ^assigns -> "Welcome, admin!" end)

      assert {:ok, "Welcome, admin!"} = LiquidEngine.render({:inline, template}, assigns)
    end

    test "renders template with loops" do
      template = """
      {% for user in users %}
      - {{ user.name }}
      {% endfor %}
      """
      assigns = %{users: [%{name: "Alice"}, %{name: "Bob"}]}

      Liquid.stub(Liquid, :parse, fn ^template -> {:ok, :parsed_template} end)
      Liquid.stub(Liquid, :render, fn :parsed_template, ^assigns -> "- Alice\n- Bob\n" end)

      assert {:ok, "- Alice\n- Bob\n"} = LiquidEngine.render({:inline, template}, assigns)
    end
  end
end
