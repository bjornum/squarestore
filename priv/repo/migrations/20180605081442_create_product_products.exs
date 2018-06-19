defmodule Squarestore.Repo.Migrations.CreateProductProducts do
  use Ecto.Migration

  def change do
    create table(:product_products) do
      add :name, :string
      add :image, :map
      add :pnr, :string
      add :summary, :string
      add :base_price, :integer
      add :lager_status, :integer
      add :supplier, :integer
      add :alternative_products, :integer

      timestamps()
    end

  end
end
