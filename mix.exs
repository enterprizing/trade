defmodule TRADE.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :trade,
      version: "0.8.0",
      elixir: "~> 1.7",
      description: "TRADE Matching Engine",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :trade,
      links: %{"GitHub" => "https://github.com/enterprizing/trade"}
    ]
  end

  def application() do
    [mod: {:trade, []}]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
