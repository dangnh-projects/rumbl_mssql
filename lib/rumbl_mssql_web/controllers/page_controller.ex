defmodule RumblMssqlWeb.PageController do
  use RumblMssqlWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
