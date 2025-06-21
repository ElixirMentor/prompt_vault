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
        assigns: assigns,

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
      
      assert ToolCallMessage.rendered(message, %{tool: "weather"}) == {:error, {:unknown_engine, nil}}
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
