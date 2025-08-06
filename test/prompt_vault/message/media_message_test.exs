defmodule PromptVault.Message.MediaMessageTest do
  use ExUnit.Case, async: true

  alias PromptVault.Message.MediaMessage

  describe "struct creation" do
    test "creates with required fields" do
      message = %MediaMessage{mime_type: "image/jpeg", url: "https://example.com/image.jpg"}

      assert message.role == :media
      assert message.mime_type == "image/jpeg"
      assert message.url == "https://example.com/image.jpg"
      assert message.raw == nil
      assert message.template == nil
      assert message.engine == nil
      assert message.assigns == %{}
      assert message.size == nil
    end

    test "creates with all fields" do
      assigns = %{alt_text: "A beautiful sunset"}

      message = %MediaMessage{
        mime_type: "image/png",
        url: "https://cdn.example.com/sunset.png",
        raw: "Beautiful sunset image",
        template: {:inline, "Image: {{alt_text}}"},
        engine: :eex,
        assigns: assigns,
        size: 2_048_576
      }

      assert message.role == :media
      assert message.mime_type == "image/png"
      assert message.url == "https://cdn.example.com/sunset.png"
      assert message.raw == "Beautiful sunset image"
      assert message.template == {:inline, "Image: {{alt_text}}"}
      assert message.engine == :eex
      assert message.assigns == assigns
      assert message.size == 2_048_576
    end

    test "enforces required keys" do
      assert_raise ArgumentError, fn ->
        struct!(MediaMessage, %{})
      end

      assert_raise ArgumentError, fn ->
        struct!(MediaMessage, %{mime_type: "image/jpeg"})
      end

      assert_raise ArgumentError, fn ->
        struct!(MediaMessage, %{url: "https://example.com/image.jpg"})
      end
    end
  end

  describe "Message behaviour callbacks" do
    test "role/1 always returns :media" do
      message = %MediaMessage{mime_type: "image/jpeg", url: "test.jpg"}
      assert MediaMessage.role(message) == :media
    end

    test "raw/1 returns the raw content" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        raw: "description"
      }

      assert MediaMessage.raw(message) == "description"
    end

    test "raw/1 returns nil when no raw content" do
      message = %MediaMessage{mime_type: "image/jpeg", url: "test.jpg"}
      assert MediaMessage.raw(message) == nil
    end

    test "template_engine/1 returns the engine" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        engine: :liquid
      }

      assert MediaMessage.template_engine(message) == :liquid
    end

    test "rendered/2 returns raw when no template" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        raw: "A test image"
      }

      assert MediaMessage.rendered(message, %{}) == "A test image"
    end

    test "rendered/2 returns error when template present but no engine" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        template: {:inline, "Image: {{description}}"}
      }

      assert MediaMessage.rendered(message, %{description: "test"}) ==
               {:error, {:unknown_engine, nil}}
    end

    test "rendered/2 with EEx template engine" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        template: {:inline, "Image: <%= @description %>"},
        engine: :eex,
        assigns: %{quality: "high"}
      }

      result = MediaMessage.rendered(message, %{description: "A beautiful sunset"})
      assert result == "Image: A beautiful sunset"
    end

    test "rendered/2 with Liquid template engine" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        template: {:inline, "Image: {{ description }}"},
        engine: :liquid,
        assigns: %{quality: "high"}
      }

      result = MediaMessage.rendered(message, %{description: "A mountain view"})
      assert result == "Image: A mountain view"
    end

    test "rendered/2 with custom engine module" do
      defmodule MockEngine do
        def render({:inline, template}, assigns) do
          {:ok, "Rendered: #{template} with #{inspect(assigns)}"}
        end
      end

      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        template: {:inline, "test template"},
        engine: MockEngine
      }

      result = MediaMessage.rendered(message, %{test: "value"})
      assert result == "Rendered: test template with %{test: \"value\"}"
    end

    test "rendered/2 handles template engine errors" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        template: {:inline, "Image: <%= @undefined_var %>"},
        engine: :eex
      }

      # EEx will render but show warning for undefined variable
      result = MediaMessage.rendered(message, %{})
      assert result == "Image: "
    end

    test "rendered/2 with unknown engine atom" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        template: {:inline, "test"},
        engine: :unknown_engine
      }

      # When engine is an atom that doesn't exist as module, it tries to call the function
      assert_raise UndefinedFunctionError, fn ->
        MediaMessage.rendered(message, %{})
      end
    end

    test "rendered/2 with invalid engine type" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        template: {:inline, "test"},
        engine: "invalid"
      }

      assert MediaMessage.rendered(message, %{}) == {:error, {:unknown_engine, "invalid"}}
    end

    test "rendered/2 merges message assigns with passed assigns" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        template: {:inline, "Image: <%= @description %> Quality: <%= @quality %>"},
        engine: :eex,
        assigns: %{quality: "high"}
      }

      result = MediaMessage.rendered(message, %{description: "sunset"})
      assert result == "Image: sunset Quality: high"
    end

    test "rendered/2 passed assigns override message assigns" do
      message = %MediaMessage{
        mime_type: "image/jpeg",
        url: "test.jpg",
        template: {:inline, "Quality: <%= @quality %>"},
        engine: :eex,
        assigns: %{quality: "low"}
      }

      result = MediaMessage.rendered(message, %{quality: "high"})
      assert result == "Quality: high"
    end
  end

  describe "media types and URLs" do
    test "accepts various MIME types" do
      image_msg = %MediaMessage{mime_type: "image/png", url: "test.png"}
      assert image_msg.mime_type == "image/png"

      audio_msg = %MediaMessage{mime_type: "audio/mpeg", url: "test.mp3"}
      assert audio_msg.mime_type == "audio/mpeg"

      video_msg = %MediaMessage{mime_type: "video/mp4", url: "test.mp4"}
      assert video_msg.mime_type == "video/mp4"
    end

    test "accepts various URL formats" do
      http_msg = %MediaMessage{mime_type: "image/jpeg", url: "http://example.com/image.jpg"}
      assert http_msg.url == "http://example.com/image.jpg"

      https_msg = %MediaMessage{
        mime_type: "image/jpeg",
        url: "https://secure.example.com/image.jpg"
      }

      assert https_msg.url == "https://secure.example.com/image.jpg"

      data_url_msg = %MediaMessage{
        mime_type: "image/jpeg",
        url: "data:image/jpeg;base64,/9j/4AAQ..."
      }

      assert data_url_msg.url == "data:image/jpeg;base64,/9j/4AAQ..."
    end

    test "accepts size information" do
      small_msg = %MediaMessage{mime_type: "image/jpeg", url: "small.jpg", size: 1024}
      assert small_msg.size == 1024

      large_msg = %MediaMessage{mime_type: "video/mp4", url: "large.mp4", size: 104_857_600}
      assert large_msg.size == 104_857_600
    end
  end
end
