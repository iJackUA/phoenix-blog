defmodule BlogWeb.FrontController do
  use BlogWeb, :controller
  plug :put_layout, :front

  def index(conn, _params) do
    render conn, "index.html"
  end
end
