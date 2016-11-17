defmodule HelloPhoenix.Repo do
  use Ecto.Repo,
    adapter: Ecto.Adapters.Postgres,
    otp_app: :hello_phoenix
end
