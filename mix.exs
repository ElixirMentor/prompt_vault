defmodule PromptVault.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :prompt_vault,
      version: @version,
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "PromptVault",
      description:
        "A toolkit for managing and processing prompts with context, templates, and token counting",
      source_url: "https://github.com/ElixirMentor/prompt_vault",
      homepage_url: "https://github.com/ElixirMentor/prompt_vault",
      package: package(),
      docs: docs(),

      # Coverage
      test_coverage: [
        tool: ExCoveralls,
        summary: [threshold: 80],
        export: "cov",
        ignore_modules: [~r/^PromptVaultTest\./]
      ],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.github": :test,
        "coveralls.lcov": :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        "coveralls.cobertura": :test
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:solid, "~> 0.15", optional: true},
      {:fnord, "~> 0.3"},

      # Development & Test Dependencies
      {:credo, "~> 1.7", only: [:dev, :test]},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:doctor, "~> 0.21", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false},
      {:excoveralls, "~> 0.18.3", only: [:dev, :test]},
      {:mix_test_watch, "~> 1.0", only: [:dev, :test], runtime: false},
      {:mock, "~> 0.3.0", only: :test},
      {:mimic, "~> 1.11", only: :test},
      {:stream_data, "~> 1.0", only: [:dev, :test]}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
      maintainers: ["ElixirMentor"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/ElixirMentor/prompt_vault"
      }
    ]
  end

  defp docs do
    [
      main: "readme",
      api_reference: false,
      source_ref: "v#{@version}",
      source_url: "https://github.com/ElixirMentor/prompt_vault",
      authors: ["ElixirMentor"],
      groups_for_extras: [
        "Start Here": [
          "README.md"
        ],
        About: [
          "README.md"
        ]
      ],
      extras: [
        {"README.md", title: "Home"}
      ],
      extra_section: "Guides",
      formatters: ["html"],
      groups_for_modules: [
        Core: [
          PromptVault,
          PromptVault.Context,
          PromptVault.Message,
          PromptVault.Compaction,
          PromptVault.TemplateEngine,
          PromptVault.TokenCounter
        ],
        "Message Types": [
          PromptVault.Message.PromptMessage,
          PromptVault.Message.MediaMessage,
          PromptVault.Message.ToolCallMessage
        ],
        "Template Engines": [
          PromptVault.TemplateEngine.EexEngine,
          PromptVault.TemplateEngine.LiquidEngine
        ],
        "Token Counters": [
          PromptVault.TokenCounter.PretendTokenizer
        ],
        Compaction: [
          PromptVault.Compaction.SummarizeHistory
        ]
      ]
    ]
  end
end
