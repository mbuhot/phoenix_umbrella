defmodule App2.PageController do
  use App2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
