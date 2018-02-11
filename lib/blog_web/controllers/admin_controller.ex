defmodule BlogWeb.AdminController do
  #require ExDebugToolbar
  use BlogWeb, :controller
  plug :put_layout, :admin

  def index(conn, _params) do
    #ExDebugToolbar.pry
    render conn, "index.html"
  end
end
