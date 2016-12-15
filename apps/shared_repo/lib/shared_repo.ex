defmodule SharedRepo do
use Application
  def start(_type, _args) do
    Shared.Repo.start_link
  end
end
