defmodule PromptVault.TokenCounter.PretendTokenizerTest do
  use ExUnit.Case, async: true

  alias PromptVault.TokenCounter.PretendTokenizer

  describe "count/2" do
    test "counts tokens for binary content" do
      content = "Hello world, this is a test message."
      result = PretendTokenizer.count(nil, content)

      assert is_integer(result)
      assert result > 0
    end

    test "counts tokens for iodata content" do
      content = ["Hello ", "world, ", "this is a test."]
      result = PretendTokenizer.count(nil, content)

      assert is_integer(result)
      assert result > 0
    end

    test "handles empty binary content" do
      content = ""
      result = PretendTokenizer.count(nil, content)

      assert result == 0
    end

    test "handles empty list content" do
      content = []
      result = PretendTokenizer.count(nil, content)

      assert result == 0
    end

    test "handles nil content" do
      content = nil
      result = PretendTokenizer.count(nil, content)

      assert result == 0
    end

    test "handles non-string/non-list content" do
      content = %{key: "value"}
      result = PretendTokenizer.count(nil, content)

      assert result == 0
    end

    test "model parameter is ignored" do
      content = "Test content"

      result1 = PretendTokenizer.count("gpt-4", content)
      result2 = PretendTokenizer.count("claude-3", content)
      result3 = PretendTokenizer.count(nil, content)

      assert result1 == result2
      assert result2 == result3
    end

    test "longer content has more tokens" do
      short_content = "Hello"

      long_content =
        "Hello world, this is a much longer piece of content that should definitely have more tokens than the short content."

      short_tokens = PretendTokenizer.count(nil, short_content)
      long_tokens = PretendTokenizer.count(nil, long_content)

      assert long_tokens > short_tokens
    end

    test "consistent results for same content" do
      content = "This is a test message for consistency."

      result1 = PretendTokenizer.count(nil, content)
      result2 = PretendTokenizer.count(nil, content)
      result3 = PretendTokenizer.count(nil, content)

      assert result1 == result2
      assert result2 == result3
    end

    test "handles iodata with mixed types" do
      content = ["String part", 32, ["nested", " list"], " final part"]
      result = PretendTokenizer.count(nil, content)

      assert is_integer(result)
      assert result > 0
    end

    test "handles unicode content" do
      content = "Hello 世界! 🌍 This contains unicode characters."
      result = PretendTokenizer.count(nil, content)

      assert is_integer(result)
      assert result > 0
    end
  end

  describe "normalize_content/1" do
    # Test the private function indirectly through count/2
    test "normalizes binary content correctly" do
      content = "Simple binary content"
      result = PretendTokenizer.count(nil, content)

      # Should work without errors
      assert is_integer(result)
    end

    test "normalizes list content correctly" do
      content = ["Part 1", " Part 2", " Part 3"]
      result = PretendTokenizer.count(nil, content)

      # Should work without errors and produce reasonable result
      assert is_integer(result)
      assert result > 0
    end

    test "normalizes complex iodata correctly" do
      content = [
        "Header: ",
        ["nested", " content"],
        " and more ",
        [["deeply"], " nested"],
        " content."
      ]

      result = PretendTokenizer.count(nil, content)

      assert is_integer(result)
      assert result > 0
    end
  end
end
