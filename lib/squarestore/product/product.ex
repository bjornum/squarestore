defmodule Squarestore.Product do
  import Ecto.Query, warn: false
  alias Squarestore.Repo

  alias Squarestore.Product.Products

  def list_products do
    Repo.all(Products)
  end

  def get_product!(id), do: Repo.get!(Products,id)

  def create_product(attrs \\ %{}) do
    %Products{}
    |> Products.changeset(attrs)
    |> Repo.insert
  end
end
