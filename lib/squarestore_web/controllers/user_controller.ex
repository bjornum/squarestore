defmodule SquarestoreWeb.UserController do
  use SquarestoreWeb, :controller

  alias Squarestore.Identity
  alias Squarestore.Identity.User

  def index(conn, _params) do
    users = Identity.list_users()
    render(conn, "index.html", users: users)
  end

  def new(conn, _params) do
    changeset = Identity.create_user()
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"user" => user_params}) do
    case Identity.create_user(user_params) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "User created successfully.")
        |> redirect(to: user_path(conn, :show, user))
 
    end
  end

  def show(conn, %{"id" => id}) do
    user = Identity.get_user!(id)
    render(conn, "show.html", user: user)
  end

  def edit(conn, %{"id" => id}) do
    user = Identity.get_user!(id)
    changeset = Identity.change_user(user)
    render(conn, "edit.html", user: user, changeset: changeset)
  end

  def update(conn, %{"id" => id, "user" => user_params}) do
    user = Identity.get_user!(id)

    case Identity.update_user(user, user_params) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "User updated successfully.")
        |> redirect(to: user_path(conn, :show, user))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", user: user, changeset: changeset)
    end
  end


end
