use Mix.Config

# Configure your database
config :shared_repo, Shared.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "shared_repo_dev",
  hostname: "localhost",
  pool_size: 10
