defmodule PromptVault.Message.PromptMessageTest do
  use ExUnit.Case, async: true

  alias PromptVault.Message.PromptMessage

  describe "struct creation" do
    test "creates with required fields" do
      message = %PromptMessage{role: :user, raw: "Hello"}

      assert message.role == :user
      assert message.raw == "Hello"
      assert message.template == nil
      assert message.engine == nil
      assert message.assigns == %{}
    end

    test "creates with optional fields" do
      assigns = %{name: "Alice"}
      message = %PromptMessage{
        role: :assistant,
        raw: "Hi {{name}}",
        template: {:inline, "Hi {{name}}"},
        engine: :eex,
        assigns: assigns
      }

      assert message.role == :assistant
      assert message.raw == "Hi {{name}}"
      assert message.template == {:inline, "Hi {{name}}"}
      assert message.engine == :eex
      assert message.assigns == assigns
    end

    test "enforces required keys" do
      assert_raise ArgumentError, fn ->
        struct!(PromptMessage, %{})
      end

      assert_raise ArgumentError, fn ->
        struct!(PromptMessage, %{role: :user})
      end
    end
  end

  describe "Message behaviour callbacks" do
    test "role/1 returns the role" do
      message = %PromptMessage{role: :system, raw: "test"}
      assert PromptMessage.role(message) == :system
    end

    test "raw/1 returns the raw content" do
      message = %PromptMessage{role: :user, raw: "hello world"}
      assert PromptMessage.raw(message) == "hello world"
    end

    test "template_engine/1 returns the engine" do
      message = %PromptMessage{role: :user, raw: "test", engine: :liquid}
      assert PromptMessage.template_engine(message) == :liquid
    end

    test "template_engine/1 returns nil when no engine" do
      message = %PromptMessage{role: :user, raw: "test"}
      assert PromptMessage.template_engine(message) == nil
    end

    test "rendered/2 returns raw when no template" do
      message = %PromptMessage{role: :user, raw: "plain text"}
      assert PromptMessage.rendered(message, %{}) == "plain text"
    end

    test "rendered/2 returns error when template present but no engine" do
      message = %PromptMessage{
        role: :user,
        raw: "test",
        template: {:inline, "Hello {{name}}"}
      }
      
      assert PromptMessage.rendered(message, %{name: "Alice"}) == {:error, {:unknown_engine, nil}}
    end
  end

  describe "edge cases" do
    test "handles various data types for raw" do
      message1 = %PromptMessage{role: :user, raw: 42}
      assert PromptMessage.raw(message1) == 42

      message2 = %PromptMessage{role: :user, raw: [:a, :b, :c]}
      assert PromptMessage.raw(message2) == [:a, :b, :c]

      message3 = %PromptMessage{role: :user, raw: %{key: "value"}}
      assert PromptMessage.raw(message3) == %{key: "value"}
    end

    test "handles empty assigns map" do
      message = %PromptMessage{role: :user, raw: "test", assigns: %{}}
      assert PromptMessage.rendered(message, %{some: "assigns"}) == "test"
    end
  end
end
