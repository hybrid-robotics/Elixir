# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ten_centuries,
  ecto_repos: [TenCenturies.Repo]

# Configures the endpoint
config :ten_centuries, TenCenturies.Endpoint,
  url: [host: "localhost"],
  http: [port: 4370],
  secret_key_base: "WBG7aI0Vj+p0gCgrYzuF6JjdD7WxWdPt42yji38/zblXc3spmO6JCcwy8OokbrO7",
  render_errors: [view: TenCenturies.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TenCenturies.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures the database and account
config :ten_centuries, TenCenturies.Repo,
  database: "TenCenturies",
  username: "10Centuries",
  password: "Xt8=3pq$1Y-7",
  hostname: "localhost",
  port: 5432

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
