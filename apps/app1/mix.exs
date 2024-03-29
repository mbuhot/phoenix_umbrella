defmodule App1.Mixfile do
  use Mix.Project

  def project do
    [app: :app1,
     version: "0.0.1",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.2",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases(),
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {App1, []},
     applications: [:phoenix, :phoenix_html, :logger, :gettext,
                    :phoenix_ecto, :shared_repo]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.2.0"},
     {:phoenix_ecto, "~> 3.0"},
     {:phoenix_html, "~> 2.6"},
     {:gettext, "~> 0.11"},
     {:shared_repo, in_umbrella: true}]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    []
    # ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
    #  "ecto.reset": ["ecto.drop", "ecto.setup"],
    #  "test": ["ecto.create --quiet", "ecto.migrate", "test"]]
  end
end
