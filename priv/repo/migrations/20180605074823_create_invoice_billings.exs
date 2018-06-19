defmodule Squarestore.Repo.Migrations.CreateInvoiceBillings do
  use Ecto.Migration

  def change do
    create table(:billing) do
      add :card_number, :string
      add :expiry_month, :integer
      add :expiry_year, :integer
      add :card_holder, :string
      add :ccv, :integer
      add :card_type, :string
      add :invoice_address, :integer
      add :user_id, :integer

      timestamps()
    end
  end
end
