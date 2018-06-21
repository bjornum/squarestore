defmodule SquarestoreWeb.BrukerStyringController do
  use SquarestoreWeb, :controller
  alias Squarestore.Identity
  alias Squarestore.Identity.User
  require Logger

	def index(conn, _params) do
		users = Identity.list_users()
	    render conn, "index.html", users: users
	end

	def show(conn, %{"id" => id}) do
		users = Identity.list_users()
		user = Identity.get_user!(id)
	    render conn, "currentuser.html", users: users, user: user
	end
	def create(conn, %{"user" => user_params}) do
		changeset = Identity.create_user(user_params)
		render conn, "currentuser.html", changeset: changeset
	end
end
