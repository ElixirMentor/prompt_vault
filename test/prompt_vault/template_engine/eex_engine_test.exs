defmodule PromptVault.TemplateEngine.EExEngineTest do
  use ExUnit.Case, async: true
  use Mimic

  alias PromptVault.TemplateEngine.EExEngine

  describe "inline templates" do
    test "renders simple inline template" do
      template = "Hello <%= assigns.name %>!"
      assigns = %{name: "World"}

      assert {:ok, "Hello World!"} = EExEngine.render({:inline, template}, assigns)
    end

    test "renders template with multiple variables" do
      template = "User <%= assigns.name %> is <%= assigns.age %> years old"
      assigns = %{name: "Alice", age: 30}

      assert {:ok, "User Alice is 30 years old"} = EExEngine.render({:inline, template}, assigns)
    end

    test "renders template with conditionals" do
      template = """
      <%= if assigns.admin do %>
      Welcome, admin!
      <% else %>
      Welcome, user!
      <% end %>
      """

      admin_assigns = %{admin: true}
      user_assigns = %{admin: false}

      {:ok, admin_result} = EExEngine.render({:inline, template}, admin_assigns)
      {:ok, user_result} = EExEngine.render({:inline, template}, user_assigns)

      assert String.contains?(admin_result, "Welcome, admin!")
      assert String.contains?(user_result, "Welcome, user!")
    end

    test "handles missing variables gracefully" do
      template = "Hello <%= assigns.missing %>!"
      assigns = %{}

      assert {:error, %KeyError{}} = EExEngine.render({:inline, template}, assigns)
    end

    test "handles syntax errors" do
      # Missing closing %>
      template = "Hello <%= assigns.name"
      assigns = %{name: "World"}

      assert {:error, %EEx.SyntaxError{}} = EExEngine.render({:inline, template}, assigns)
    end

    test "validates template is a string" do
      assert {:error, {:invalid_template_source, {:inline, 123}}} =
               EExEngine.render({:inline, 123}, %{})
    end
  end

  describe "file templates" do
    setup do
      Mimic.copy(File)
      :ok
    end

    test "renders template from file" do
      file_content = "Hello <%= assigns.name %>!"
      file_path = "/tmp/test_template.eex"
      assigns = %{name: "File"}

      File
      |> stub(:read, fn ^file_path -> {:ok, file_content} end)

      assert {:ok, "Hello File!"} = EExEngine.render({:file, file_path}, assigns)
    end

    test "handles file read errors" do
      file_path = "/nonexistent/template.eex"
      assigns = %{}

      File
      |> stub(:read, fn ^file_path -> {:error, :enoent} end)

      assert {:error, {:file_error, :enoent}} = EExEngine.render({:file, file_path}, assigns)
    end

    test "handles template syntax errors in files" do
      # Missing closing %>
      file_content = "Hello <%= assigns.name"
      file_path = "/tmp/bad_template.eex"
      assigns = %{name: "World"}

      File
      |> stub(:read, fn ^file_path -> {:ok, file_content} end)

      assert {:error, %EEx.SyntaxError{}} = EExEngine.render({:file, file_path}, assigns)
    end

    test "validates file path is a string" do
      assert {:error, {:invalid_template_source, {:file, :not_a_string}}} =
               EExEngine.render({:file, :not_a_string}, %{})
    end
  end

  describe "module templates" do
    test "renders template from module" do
      defmodule TestTemplateModule do
        def render(assigns) do
          "Hello #{assigns.name} from module!"
        end
      end

      assigns = %{name: "Module"}

      assert {:ok, "Hello Module from module!"} =
               EExEngine.render({:module, TestTemplateModule}, assigns)
    end

    test "handles module without render function" do
      defmodule ModuleWithoutRender do
        def other_function(assigns), do: assigns
      end

      assigns = %{}

      assert {:error, {:no_render_function, ModuleWithoutRender}} =
               EExEngine.render({:module, ModuleWithoutRender}, assigns)
    end

    test "handles module render function errors" do
      defmodule ModuleWithError do
        def render(_assigns) do
          raise "Template error!"
        end
      end

      assigns = %{}

      assert {:error, %RuntimeError{message: "Template error!"}} =
               EExEngine.render({:module, ModuleWithError}, assigns)
    end

    test "validates module is an atom" do
      assert {:error, {:invalid_template_source, {:module, "not_an_atom"}}} =
               EExEngine.render({:module, "not_an_atom"}, %{})
    end
  end

  describe "invalid template sources" do
    test "rejects unknown template source formats" do
      assert {:error, {:invalid_template_source, {:unknown, "template"}}} =
               EExEngine.render({:unknown, "template"}, %{})

      assert {:error, {:invalid_template_source, "just a string"}} =
               EExEngine.render("just a string", %{})

      assert {:error, {:invalid_template_source, 123}} =
               EExEngine.render(123, %{})
    end
  end

  describe "complex templates" do
    test "renders template with loops" do
      template = """
      Users:
      <%= for user <- assigns.users do %>
      - <%= user.name %> (<%= user.email %>)
      <% end %>
      """

      assigns = %{
        users: [
          %{name: "Alice", email: "alice@example.com"},
          %{name: "Bob", email: "bob@example.com"}
        ]
      }

      {:ok, result} = EExEngine.render({:inline, template}, assigns)

      assert String.contains?(result, "Alice")
      assert String.contains?(result, "alice@example.com")
      assert String.contains?(result, "Bob")
      assert String.contains?(result, "bob@example.com")
    end

    test "renders template with functions" do
      template = """
      Count: <%= length(assigns.items) %>
      Items: <%= Enum.join(assigns.items, ", ") %>
      """

      assigns = %{items: ["apple", "banana", "cherry"]}

      {:ok, result} = EExEngine.render({:inline, template}, assigns)

      assert String.contains?(result, "Count: 3")
      assert String.contains?(result, "apple, banana, cherry")
    end
  end
end
