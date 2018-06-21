defmodule Squarestore.Identity do
  import Ecto.Query, warn: false
  alias Squarestore.Repo

  alias Squarestore.Identity.Adress
  alias Squarestore.Identity.User

  def list_users do
    Repo.all(User)
    |> Squarestore.Repo.preload(:adress)

  end

  def list_adresses do
    Repo.all(Adress)
    |> Squarestore.Repo.preload(:user)
  end

  def get_user!(id), do: Repo.get!(User,id) |> Squarestore.Repo.preload(:adress)

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def create_adress(attrs \\ %{}) do
    %Adress{}
    |> Adress.changeset(attrs)
    |> Repo.insert()
  end

  def get_adress!(id), do: Repo.get!(Adress,id) |> Squarestore.Repo.preload(:user)

end
