# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rumbl_mssql,
  ecto_repos: [RumblMssql.Repo]

# Configures the endpoint
config :rumbl_mssql, RumblMssqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LA5rKFPU/gpPSqnWsB51Zr3znKe11PgKluI9NQkN0JpMjAhnstvACTrt80rShv0u",
  render_errors: [view: RumblMssqlWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: RumblMssql.PubSub,
  live_view: [signing_salt: "etoT+GYW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
