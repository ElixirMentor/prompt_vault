defmodule PromptVault.Message.ToolCallMessageTest do
  use ExUnit.Case, async: true

  alias PromptVault.Message.ToolCallMessage

  describe "struct creation" do
    test "creates with required fields" do
      message = %ToolCallMessage{tool: :weather, args: %{city: "NYC"}}

      assert message.role == :tool
      assert message.tool == :weather
      assert message.args == %{city: "NYC"}
      assert message.response_schema == nil
      assert message.raw == nil
      assert message.template == nil
      assert message.engine == nil
      assert message.assigns == %{}
    end

    test "creates with all fields" do
      schema = %{type: "object", properties: %{temp: %{type: "number"}}}
      assigns = %{location: "NYC"}

      message = %ToolCallMessage{
        tool: "get_weather",
        args: %{city: "New York", units: "celsius"},
        response_schema: schema,
        raw: "Getting weather for NYC",
        template: {:inline, "Weather: {{temp}}°C"},
        engine: :eex,
        assigns: assigns
      }

      assert message.tool == "get_weather"
      assert message.args == %{city: "New York", units: "celsius"}
      assert message.response_schema == schema
      assert message.raw == "Getting weather for NYC"
      assert message.template == {:inline, "Weather: {{temp}}°C"}
      assert message.engine == :eex
      assert message.assigns == assigns
    end

    test "enforces required keys" do
      assert_raise ArgumentError, fn ->
        struct!(ToolCallMessage, %{})
      end

      assert_raise ArgumentError, fn ->
        struct!(ToolCallMessage, %{tool: :weather})
      end

      assert_raise ArgumentError, fn ->
        struct!(ToolCallMessage, %{args: %{}})
      end
    end
  end

  describe "Message behaviour callbacks" do
    test "role/1 always returns :tool" do
      message = %ToolCallMessage{tool: :test, args: %{}}
      assert ToolCallMessage.role(message) == :tool
    end

    test "raw/1 returns the raw content" do
      message = %ToolCallMessage{tool: :test, args: %{}, raw: "tool call"}
      assert ToolCallMessage.raw(message) == "tool call"
    end

    test "raw/1 returns nil when no raw content" do
      message = %ToolCallMessage{tool: :test, args: %{}}
      assert ToolCallMessage.raw(message) == nil
    end

    test "template_engine/1 returns the engine" do
      message = %ToolCallMessage{tool: :test, args: %{}, engine: :liquid}
      assert ToolCallMessage.template_engine(message) == :liquid
    end

    test "rendered/2 returns raw when no template" do
      message = %ToolCallMessage{tool: :test, args: %{}, raw: "call weather"}
      assert ToolCallMessage.rendered(message, %{}) == "call weather"
    end

    test "rendered/2 returns error when template present but no engine" do
      message = %ToolCallMessage{
        tool: :test,
        args: %{},
        template: {:inline, "Calling {{tool}}"}
      }

      assert ToolCallMessage.rendered(message, %{tool: "weather"}) ==
               {:error, {:unknown_engine, nil}}
    end

    test "rendered/2 with EEx template engine" do
      message = %ToolCallMessage{
        tool: :weather,
        args: %{city: "NYC"},
        template: {:inline, "Calling <%= @tool %> for <%= @city %>"},
        engine: :eex,
        assigns: %{units: "celsius"}
      }

      result = ToolCallMessage.rendered(message, %{tool: "weather API", city: "New York"})
      assert result == "Calling weather API for New York"
    end

    test "rendered/2 with Liquid template engine" do
      message = %ToolCallMessage{
        tool: :search,
        args: %{query: "elixir"},
        template: {:inline, "Searching {{ tool }} for: {{ query }}"},
        engine: :liquid,
        assigns: %{limit: 10}
      }

      result = ToolCallMessage.rendered(message, %{tool: "database", query: "phoenix"})
      assert result == "Searching database for: phoenix"
    end

    test "rendered/2 with custom engine module" do
      defmodule MockEngine do
        def render({:inline, template}, assigns) do
          {:ok, "Tool rendered: #{template} with #{inspect(assigns)}"}
        end
      end

      message = %ToolCallMessage{
        tool: :custom,
        args: %{},
        template: {:inline, "custom template"},
        engine: MockEngine
      }

      result = ToolCallMessage.rendered(message, %{test: "value"})
      assert result == "Tool rendered: custom template with %{test: \"value\"}"
    end

    test "rendered/2 handles template engine errors" do
      message = %ToolCallMessage{
        tool: :test,
        args: %{},
        template: {:inline, "Tool: <%= @undefined_var %>"},
        engine: :eex
      }

      # EEx will render but show warning for undefined variable
      result = ToolCallMessage.rendered(message, %{})
      assert result == "Tool: "
    end

    test "rendered/2 with unknown engine atom" do
      message = %ToolCallMessage{
        tool: :test,
        args: %{},
        template: {:inline, "test"},
        engine: :unknown_engine
      }

      # When engine is an atom that doesn't exist as module, it tries to call the function
      assert_raise UndefinedFunctionError, fn ->
        ToolCallMessage.rendered(message, %{})
      end
    end

    test "rendered/2 with invalid engine type" do
      message = %ToolCallMessage{
        tool: :test,
        args: %{},
        template: {:inline, "test"},
        engine: "invalid"
      }

      assert ToolCallMessage.rendered(message, %{}) == {:error, {:unknown_engine, "invalid"}}
    end

    test "rendered/2 merges message assigns with passed assigns" do
      message = %ToolCallMessage{
        tool: :api,
        args: %{},
        template: {:inline, "Calling <%= @service %> with <%= @timeout %>s timeout"},
        engine: :eex,
        assigns: %{timeout: 30}
      }

      result = ToolCallMessage.rendered(message, %{service: "weather API"})
      assert result == "Calling weather API with 30s timeout"
    end

    test "rendered/2 passed assigns override message assigns" do
      message = %ToolCallMessage{
        tool: :api,
        args: %{},
        template: {:inline, "Timeout: <%= @timeout %>s"},
        engine: :eex,
        assigns: %{timeout: 30}
      }

      result = ToolCallMessage.rendered(message, %{timeout: 60})
      assert result == "Timeout: 60s"
    end
  end

  describe "tool and args validation" do
    test "accepts atom tool names" do
      message = %ToolCallMessage{tool: :weather_api, args: %{}}
      assert message.tool == :weather_api
    end

    test "accepts string tool names" do
      message = %ToolCallMessage{tool: "weather_service", args: %{}}
      assert message.tool == "weather_service"
    end

    test "accepts complex args maps" do
      complex_args = %{
        location: %{lat: 40.7128, lng: -74.0060},
        options: %{units: "metric", lang: "en"},
        callbacks: ["on_success", "on_error"]
      }

      message = %ToolCallMessage{tool: :weather, args: complex_args}
      assert message.args == complex_args
    end

    test "accepts various response schema formats" do
      # JSON Schema as map
      schema_map = %{type: "object", properties: %{temp: %{type: "number"}}}
      message1 = %ToolCallMessage{tool: :test, args: %{}, response_schema: schema_map}
      assert message1.response_schema == schema_map

      # Schema as string
      schema_string = "{\"type\": \"object\"}"
      message2 = %ToolCallMessage{tool: :test, args: %{}, response_schema: schema_string}
      assert message2.response_schema == schema_string
    end
  end
end
