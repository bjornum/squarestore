defmodule Squarestore.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :image, :map
      add :pnr, :string
      add :summary, :string
      add :base_price, :integer
      add :storage_status, :string
      add :supplier, :integer
      add :alternative_products, :integer

      timestamps()
    end
  end

end
