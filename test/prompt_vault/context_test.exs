defmodule PromptVault.ContextTest do
  use ExUnit.Case, async: true

  describe "new/1" do
    test "creates context with default values" do
      context = PromptVault.new()

      assert context.model == nil
      assert context.temperature == nil
      assert context.max_tokens == nil
      assert context.messages == []
      assert context.token_counter == nil
      assert context.compaction_strategy == nil
      assert context.token_count == 0
    end

    test "creates context with provided options" do
      context =
        PromptVault.new(
          model: :gpt4,
          temperature: 0.7,
          max_tokens: 1000,
          token_counter: SomeTokenCounter
        )

      assert context.model == :gpt4
      assert context.temperature == 0.7
      assert context.max_tokens == 1000
      assert context.token_counter == SomeTokenCounter
    end
  end

  describe "put_model/2" do
    test "updates the model" do
      context = PromptVault.new() |> PromptVault.put_model(:gpt4)
      assert context.model == :gpt4
    end

    test "maintains other fields" do
      original = PromptVault.new(temperature: 0.5)
      updated = PromptVault.put_model(original, :gpt4)

      assert updated.model == :gpt4
      assert updated.temperature == 0.5
    end
  end

  describe "put_opts/2" do
    test "updates multiple options" do
      context =
        PromptVault.new()
        |> PromptVault.put_opts(model: :gpt4, temperature: 0.7, max_tokens: 1000)

      assert context.model == :gpt4
      assert context.temperature == 0.7
      assert context.max_tokens == 1000
    end

    test "preserves existing values when option not provided" do
      original = PromptVault.new(model: :gpt3, temperature: 0.5)
      updated = PromptVault.put_opts(original, temperature: 0.7)

      assert updated.model == :gpt3
      assert updated.temperature == 0.7
    end
  end

  describe "Inspect protocol" do
    test "shows basic info with model and messages" do
      context = PromptVault.new(model: :gpt4)
      inspected = inspect(context)

      assert inspected =~ "#PromptVault<"
      assert inspected =~ "model=gpt4"
      assert inspected =~ ">"
    end

    test "hides nil and zero values" do
      context = PromptVault.new()
      inspected = inspect(context)

      refute inspected =~ "model="
      refute inspected =~ "temp="
      refute inspected =~ "max="
      refute inspected =~ "msgs=0"
      refute inspected =~ "tokens=0"
    end

    test "shows all relevant values when present" do
      context =
        PromptVault.new(
          model: :gpt4,
          temperature: 0.7,
          max_tokens: 1000
        )
        |> Map.put(:token_count, 150)

      inspected = inspect(context)

      assert inspected =~ "model=gpt4"
      assert inspected =~ "temp=0.7"
      assert inspected =~ "max=1000"
      assert inspected =~ "tokens≈150"
    end
  end
end
