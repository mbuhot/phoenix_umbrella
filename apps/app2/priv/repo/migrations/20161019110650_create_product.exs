defmodule App2.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string

      timestamps()
    end

  end
end
