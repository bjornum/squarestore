defmodule SquarestoreWeb.UserPageController do
  use SquarestoreWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  def show(conn, %{"id" => id}) do
    user = Squarestore.Identity2.get_user!(id)
    render conn, "show.html", user: user
  end
end
