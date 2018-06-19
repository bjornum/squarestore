defmodule Squarestore.Repo.Migrations.CreateInvoices do
  use Ecto.Migration

  def change do
    create table(:invoices) do
      add :total_sum, :decimal
      add :shipping_address, :integer
      add :invoice_address, :integer
      add :product_id, :map
      add :user_id, :integer

      timestamps()
    end
  end
end
