# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rocketpay_lfc,
  ecto_repos: [RocketpayLfc.Repo]

# Configures the endpoint
config :rocketpay_lfc, RocketpayLfcWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7YI5n14YXy0kmW6pK6Ghc7uOGTFQjBCjemQMdz+jDBQvM4irk4IFh3o9KyXYKFx5",
  render_errors: [view: RocketpayLfcWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: RocketpayLfc.PubSub,
  live_view: [signing_salt: "Junh09vq"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
