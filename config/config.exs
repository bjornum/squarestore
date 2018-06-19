# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :squarestore,
  ecto_repos: [Squarestore.Repo]

# Configures the endpoint
config :squarestore, SquarestoreWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3b2PGsomRDoX467WreFz+BSo6DuxeFce2uFopUc0aKG0WCVdaE+um1AzQPo29INf",
  render_errors: [view: SquarestoreWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Squarestore.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]
# Configure Stripe API key
config :stripity_stripe, api_key: "insert key"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
