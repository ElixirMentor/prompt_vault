defmodule PromptVault.TemplateEngine.LiquidEngineTest do
  use ExUnit.Case, async: true
  use Mimic

  alias PromptVault.TemplateEngine.LiquidEngine

  describe "when Solid is available" do
    test "renders simple inline template" do
      template = "Hello {{ name }}!"
      assigns = %{name: "World"}

      assert {:ok, "Hello World!"} = LiquidEngine.render({:inline, template}, assigns)
    end

    test "renders template with multiple variables" do
      template = "User {{ name }} is {{ age }} years old"
      assigns = %{name: "Alice", age: 30}

      assert {:ok, "User Alice is 30 years old"} =
               LiquidEngine.render({:inline, template}, assigns)
    end

    test "renders template with filters" do
      template = "Hello {{ name | upcase }}!"
      assigns = %{name: "world"}

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

      admin_assigns = %{admin: true}
      user_assigns = %{admin: false}

      {:ok, admin_result} = LiquidEngine.render({:inline, template}, admin_assigns)
      {:ok, user_result} = LiquidEngine.render({:inline, template}, user_assigns)

      assert String.contains?(admin_result, "Welcome, admin!")
      assert String.contains?(user_result, "Welcome, user!")
    end

    test "renders template with loops" do
      template = """
      {% for user in users %}
      - {{ user.name }}
      {% endfor %}
      """

      assigns = %{users: [%{name: "Alice"}, %{name: "Bob"}]}

      {:ok, result} = LiquidEngine.render({:inline, template}, assigns)

      assert String.contains?(result, "- Alice")
      assert String.contains?(result, "- Bob")
    end

    test "handles missing variables gracefully" do
      template = "Hello {{ missing }}!"
      assigns = %{}

      # Solid renders undefined variables as empty strings
      assert {:ok, "Hello !"} = LiquidEngine.render({:inline, template}, assigns)
    end

    test "handles parse errors" do
      # Missing closing }}
      template = "Hello {{ name"
      assigns = %{name: "World"}

      assert {:error, {:parse_error, _reason}} =
               LiquidEngine.render({:inline, template}, assigns)
    end

    test "validates template is a string" do
      assert {:error, {:invalid_template_source, {:inline, 123}}} =
               LiquidEngine.render({:inline, 123}, %{})
    end
  end

  describe "file templates" do
    setup do
      Mimic.copy(File)
      :ok
    end

    test "renders template from file" do
      file_content = "Hello {{ name }}!"
      file_path = "/tmp/test_template.liquid"
      assigns = %{name: "File"}

      File
      |> stub(:read, fn ^file_path -> {:ok, file_content} end)

      assert {:ok, "Hello File!"} = LiquidEngine.render({:file, file_path}, assigns)
    end

    test "handles file read errors" do
      file_path = "/nonexistent/template.liquid"
      assigns = %{}

      File
      |> stub(:read, fn ^file_path -> {:error, :enoent} end)

      assert {:error, {:file_error, :enoent}} =
               LiquidEngine.render({:file, file_path}, assigns)
    end

    test "handles parse errors in files" do
      # Missing closing }}
      file_content = "Hello {{ name"
      file_path = "/tmp/bad_template.liquid"
      assigns = %{name: "World"}

      File
      |> stub(:read, fn ^file_path -> {:ok, file_content} end)

      assert {:error, {:parse_error, _reason}} =
               LiquidEngine.render({:file, file_path}, assigns)
    end

    test "validates file path is a string" do
      assert {:error, {:invalid_template_source, {:file, :not_a_string}}} =
               LiquidEngine.render({:file, :not_a_string}, %{})
    end
  end

  describe "module templates" do
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

  describe "template validation" do
    test "rejects unknown template source formats" do
      assert {:error, {:invalid_template_source, {:unknown, "template"}}} =
               LiquidEngine.render({:unknown, "template"}, %{})

      assert {:error, {:invalid_template_source, "just a string"}} =
               LiquidEngine.render("just a string", %{})

      assert {:error, {:invalid_template_source, 123}} =
               LiquidEngine.render(123, %{})
    end
  end

  describe "complex templates" do
    test "renders nested data structures" do
      template = """
      User: {{ user.name }}
      Email: {{ user.email }}
      Skills: {% for skill in user.skills %}{{ skill }}{% unless forloop.last %}, {% endunless %}{% endfor %}
      """

      assigns = %{
        user: %{
          name: "Alice",
          email: "alice@example.com",
          skills: ["Elixir", "Phoenix", "LiveView"]
        }
      }

      {:ok, result} = LiquidEngine.render({:inline, template}, assigns)

      assert String.contains?(result, "User: Alice")
      assert String.contains?(result, "Email: alice@example.com")
      assert String.contains?(result, "Elixir, Phoenix, LiveView")
    end

    test "renders with complex conditionals and filters" do
      template = """
      {% if user.admin %}
      Admin: {{ user.name | upcase }}
      {% elsif user.premium %}
      Premium User: {{ user.name | capitalize }}
      {% else %}
      Regular User: {{ user.name }}
      {% endif %}
      """

      admin_user = %{user: %{name: "admin", admin: true}}
      premium_user = %{user: %{name: "premium", premium: true}}
      regular_user = %{user: %{name: "regular"}}

      {:ok, admin_result} = LiquidEngine.render({:inline, template}, admin_user)
      {:ok, premium_result} = LiquidEngine.render({:inline, template}, premium_user)
      {:ok, regular_result} = LiquidEngine.render({:inline, template}, regular_user)

      assert String.contains?(admin_result, "Admin: ADMIN")
      assert String.contains?(premium_result, "Premium User: Premium")
      assert String.contains?(regular_result, "Regular User: regular")
    end
  end
end
