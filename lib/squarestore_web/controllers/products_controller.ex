defmodule SquarestoreWeb.ProductsController do
  use SquarestoreWeb, :controller

  alias Squarestore.Product

  def index(conn, _params) do
    products = Product.list_products()
    render(conn, "index.html", products: products)
  end

  def show(conn, %{"id" => id}) do
    product = Product.get_product!(id)
    render(conn, "show.html", product: product)
  end

end
