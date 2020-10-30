defmodule Dripper.Mixfile do
  use Mix.Project

  def project do
    [
      app: :dripper,
      version: "0.1.0",
      elixir: "~> 1.5",
      escript: [main_module: Dripper.CLI],
      start_permanent: Mix.env == :prod,
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
      {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.2"},
      {:httpotion, "~> 2.1.0"},
      {:floki, "~> 0.4.1"},
      {:progress_bar, ">= 0.0.5"},
      {:dogma, "~> 0.1.15"},
      {:credo, "~> 1.5.0"}
    ]
  end
end
