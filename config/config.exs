# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :hello_react,
  ecto_repos: [HelloReact.Repo]

config :hello_react_web,
  ecto_repos: [HelloReact.Repo],
  generators: [context_app: :hello_react]

# Configures the endpoint
config :hello_react_web, HelloReactWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "569mIK5g/6zP7rhYD20RFBNs0Q3GSxB+cMk6/6Md2i7QGw2Z6GhQ1gvy9gu1OH/n",
  render_errors: [view: HelloReactWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloReact.PubSub,
  live_view: [signing_salt: "t6oWm4cd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
