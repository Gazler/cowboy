defmodule Cowboy.Mixfile do
  use Mix.Project

  def project do
    [app: :cowboy,
     version: "2.0.0",
     description: description,
     deps: deps,
     package: package]
  end

  defp description do
    """
    Small, fast, modular HTTP server.
    """
  end

  defp deps do
    [{:ranch, "~> 1.4.0"},
     {:cowlib, "~> 2.0.0"}]
  end

  defp package do
    [maintainers: ["Loïc Hoguin"],
     licenses: ["ISC"],
     build_tools: ["rebar3"],
     links: %{"GitHub" => "https://github.com/ninenines/cowboy"},
     files: ["CONTRIBUTING.asciidoc", "erlang.mk", "LICENSE", "Makefile",
             "plugins.mk", "README.asciidoc", "rebar.config", "src"]]
  end
end
