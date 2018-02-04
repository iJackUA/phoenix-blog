defmodule BlogWeb.AdminController do
  use BlogWeb, :controller
  plug :put_layout, :admin

  def index(conn, _params) do
    render conn, "index.html"
  end
end
