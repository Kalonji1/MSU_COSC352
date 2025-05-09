defmodule WikipediaScraper.MixProject do
  use Mix.Project

  def project do
    [
      app: :wikipedia_scraper,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
    {:httpoison, "~> 1.8"},
    {:floki, "~> 0.30"},
    {:csv, "~> 2.4"}
  ]
  end

end
