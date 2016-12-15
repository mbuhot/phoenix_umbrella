# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :app2, App2.Endpoint,
  server: false,
  secret_key_base: "nQ36rl/BUS0utG3CEhm/+V5NehNTckkuVO2Js6fBsMhr6ZQ8803HhQzPCLPFPP8M",
  render_errors: [view: App2.ErrorView, accepts: ~w(html json)],
  pubsub: [name: App2.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
