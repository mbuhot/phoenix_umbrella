defmodule App1.Router do
  use App1.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/a", App1 do
    pipe_through :browser # Use the default browser stack
    resources "/users", UserController
  end

  # Other scopes may use custom stacks.
  # scope "/api", App1 do
  #   pipe_through :api
  # end
end
