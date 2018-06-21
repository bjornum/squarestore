defmodule Squarestore.Identity2.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :address, :string
    field :city, :string
    field :country, :string
    field :email, :string
    field :fname, :string
    field :lname, :string
    field :password, :string
    field :zip_code, :integer

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:fname, :lname, :email, :password, :address, :zip_code, :country, :city])
    |> validate_required([:fname, :lname, :email, :address])
  end
end
