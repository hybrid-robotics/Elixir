defmodule TenCenturies.Repo do
  use Ecto.Repo,
    adapter: Ecto.Adapters.Postgres,
    otp_app: :ten_centuries
end
