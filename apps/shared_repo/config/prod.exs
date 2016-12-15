use Mix.Config

# Do not print debug messages in production
config :logger, level: :info

# Configure your database
config :shared_repo, Shared.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "shared_repo_prod",
  pool_size: 20
