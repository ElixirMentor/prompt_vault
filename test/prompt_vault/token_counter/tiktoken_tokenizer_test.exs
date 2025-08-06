defmodule PromptVault.TokenCounter.TiktokenTokenizerTest do
  use ExUnit.Case, async: true

  alias PromptVault.TokenCounter.TiktokenTokenizer

  doctest TiktokenTokenizer

  describe "count/2" do
    test "counts tokens for string content with string model" do
      count = TiktokenTokenizer.count("gpt-4", "Hello world")
      assert is_integer(count)
      assert count > 0
    end

    test "counts tokens for string content with atom model" do
      count = TiktokenTokenizer.count(:gpt_4, "Hello world")
      assert is_integer(count)
      assert count > 0
    end

    test "handles gpt-3.5-turbo model" do
      count = TiktokenTokenizer.count("gpt-3.5-turbo", "Hello world")
      assert is_integer(count)
      assert count > 0
    end

    test "handles text-davinci-003 model" do
      count = TiktokenTokenizer.count("text-davinci-003", "Hello world")
      assert is_integer(count)
      assert count > 0
    end

    test "counts tokens for iodata content" do
      iodata = ["Hello", " ", "world"]
      count = TiktokenTokenizer.count("gpt-4", iodata)
      assert is_integer(count)
      assert count > 0
    end

    test "returns 0 for empty string" do
      assert TiktokenTokenizer.count("gpt-4", "") == 0
    end

    test "returns 0 for empty iodata" do
      assert TiktokenTokenizer.count("gpt-4", []) == 0
    end

    test "handles invalid content gracefully" do
      assert TiktokenTokenizer.count("gpt-4", nil) == 0
      assert TiktokenTokenizer.count("gpt-4", :invalid) == 0
      assert TiktokenTokenizer.count("gpt-4", 123) == 0
    end

    test "handles unsupported model gracefully" do
      # Should return 0 for unsupported models rather than crashing
      count = TiktokenTokenizer.count("unsupported-model", "Hello world")
      assert count == 0
    end

    test "normalizes atom model names correctly" do
      # Test that atom models with underscores get converted to hyphens
      count1 = TiktokenTokenizer.count(:gpt_4, "Hello world")
      count2 = TiktokenTokenizer.count("gpt-4", "Hello world")
      assert count1 == count2
      assert count1 > 0
    end

    test "produces consistent results for same input" do
      text = "The quick brown fox jumps over the lazy dog"
      model = "gpt-4"

      count1 = TiktokenTokenizer.count(model, text)
      count2 = TiktokenTokenizer.count(model, text)

      assert count1 == count2
      assert count1 > 0
    end

    test "handles complex text with various characters" do
      complex_text = """
      This is a test with:
      - Emojis: 🚀 🌟 ✨
      - Unicode: héllo wörld
      - Numbers: 123456
      - Special chars: !@#$%^&*()
      - Newlines and tabs
      """

      count = TiktokenTokenizer.count("gpt-4", complex_text)
      assert is_integer(count)
      assert count > 0
    end

    test "longer text produces more tokens than shorter text" do
      short_text = "Hello"
      long_text = "Hello world, this is a much longer text that should produce more tokens"

      short_count = TiktokenTokenizer.count("gpt-4", short_text)
      long_count = TiktokenTokenizer.count("gpt-4", long_text)

      assert short_count > 0
      assert long_count > short_count
    end
  end

  describe "behaviour compliance" do
    test "implements PromptVault.TokenCounter behaviour" do
      # Verify that the module implements the required callback
      assert function_exported?(TiktokenTokenizer, :count, 2)

      # Test with both required parameter types
      assert is_integer(TiktokenTokenizer.count("gpt-4", "test"))
      assert is_integer(TiktokenTokenizer.count(:gpt_4, ["test", " ", "data"]))
    end
  end
end
