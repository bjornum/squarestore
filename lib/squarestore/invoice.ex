defmodule Squarestore.Invoice do
    #importing functions
        import Ecto.Query
        
    #Setting up aliases
        alias Squarestore.Repo
        alias Squarestore.Invoice
        alias Squarestore.Invoice.Invoices
        alias Squarestore.Invoice.Billing
        alias Squarestore.Identity.User
        alias Squarestore.Identity
        alias Ecto.Multi
        alias Stripe
    
        #Add a new payment card
    
        # def add_card(card_details \\ %{}, id) do
        #     card = Map.merge(card_details, %{user_id: Kernel.elem(Integer.parse(id), 0)})
        #     %Billing{}
        #     |> Billing.changeset(card)
        #     |> Repo.insert()
        # end
    
        def test_charge do
            Stripe.Charge.create(%{amount: 20000, currency: "NOK", source: "tok_visa", receipt_email: "matthew.thompson@example.com"})
        end
    end
    