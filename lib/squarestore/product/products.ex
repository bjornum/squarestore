defmodule Squarestore.Product.Products do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :alternative_products, :integer
    field :base_price, :integer
    field :image, :map
    field :storage_status, :integer
    field :name, :string
    field :pnr, :string
    field :summary, :string
    field :supplier, :integer

    timestamps()
  end

  def changeset(products, attrs) do
    products
    |> cast(attrs, [:name, :image, :pnr, :summary, :base_price, :storage_status, :supplier, :alternative_products])
    |> validate_required([:name, :summary, :base_price])
  end
end
