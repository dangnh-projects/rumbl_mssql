defmodule RumblMssql.Repo do
  use Ecto.Repo,
    otp_app: :rumbl_mssql,
    adapter: Ecto.Adapters.Tds
end
