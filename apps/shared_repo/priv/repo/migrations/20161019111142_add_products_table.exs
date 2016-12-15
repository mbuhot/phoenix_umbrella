defmodule Shared.Repo.Migrations.AddProductsTable do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string

      timestamps()
    end
  end
end
