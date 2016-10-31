# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_leaderboard,
  ecto_repos: [PhoenixLeaderboard.Repo]

# Configures the endpoint
config :phoenix_leaderboard, PhoenixLeaderboard.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7FiSjy4WAogmZmmkLFRCd3Iyzga6RZn2ZuYoxHAqfaXpks/rLGqn2oz/w4Yq8fcI",
  render_errors: [view: PhoenixLeaderboard.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixLeaderboard.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
