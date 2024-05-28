defmodule PageTitleRepro.Repo do
  use Ecto.Repo,
    otp_app: :page_title_repro,
    adapter: Ecto.Adapters.Postgres
end
