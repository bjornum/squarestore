defmodule Squarestore.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :fname, :string
      add :lname, :string
      add :email, :string
      add :password, :string
      add :address, :string
      add :zip_code, :integer
      add :country, :string
      add :city, :string

      timestamps()
    end

  end
end
