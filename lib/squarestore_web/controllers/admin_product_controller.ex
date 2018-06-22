defmodule SquarestoreWeb.AdminProdController do
    use SquarestoreWeb, :controller
    
    def index(conn, _params) do
      render conn, "index.html"
    end
  end
  