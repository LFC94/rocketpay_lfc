defmodule RocketpayLfc.Repo do
  use Ecto.Repo,
    otp_app: :rocketpay_lfc,
    adapter: Ecto.Adapters.Postgres
end
