defmodule Router do
  use Application
  def start(_type, _args) do
    Plug.Adapters.Cowboy.http Router.Router, [port: 4000]
  end

  defmodule Router do
    use Plug.Router
    plug :match
    plug :dispatch

    match "/a/*_", do: App1.Endpoint.call(conn, [])
    match "/b/*_", do: App2.Endpoint.call(conn, [])
  end
end
