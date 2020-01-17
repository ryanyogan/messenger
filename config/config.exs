use Mix.Config

config :messenger,
  ecto_repos: [Messenger.Repo]

config :messenger, MessengerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CUwcxIEHWLUvti2BdPWrtuzBp7Zvn2YnGm1tNmROU0WZkQV5ojy74zZCTsUsXuji",
  render_errors: [view: MessengerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Messenger.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "mSNA2zBgO6L0WTP+wPxAbXa94+ui6cdr"
  ]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
