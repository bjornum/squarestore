defmodule Squarestore.Identity2Test do
  use Squarestore.DataCase

  alias Squarestore.Identity2

  describe "users" do
    alias Squarestore.Identity2.User

    @valid_attrs %{address: "some address", city: "some city", country: "some country", email: "some email", fname: "some fname", lname: "some lname", password: "some password", zip_code: 42}
    @update_attrs %{address: "some updated address", city: "some updated city", country: "some updated country", email: "some updated email", fname: "some updated fname", lname: "some updated lname", password: "some updated password", zip_code: 43}
    @invalid_attrs %{address: nil, city: nil, country: nil, email: nil, fname: nil, lname: nil, password: nil, zip_code: nil}

    def user_fixture(attrs \\ %{}) do
      {:ok, user} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Identity2.create_user()

      user
    end

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Identity2.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Identity2.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      assert {:ok, %User{} = user} = Identity2.create_user(@valid_attrs)
      assert user.address == "some address"
      assert user.city == "some city"
      assert user.country == "some country"
      assert user.email == "some email"
      assert user.fname == "some fname"
      assert user.lname == "some lname"
      assert user.password == "some password"
      assert user.zip_code == 42
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Identity2.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      assert {:ok, user} = Identity2.update_user(user, @update_attrs)
      assert %User{} = user
      assert user.address == "some updated address"
      assert user.city == "some updated city"
      assert user.country == "some updated country"
      assert user.email == "some updated email"
      assert user.fname == "some updated fname"
      assert user.lname == "some updated lname"
      assert user.password == "some updated password"
      assert user.zip_code == 43
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Identity2.update_user(user, @invalid_attrs)
      assert user == Identity2.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Identity2.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Identity2.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Identity2.change_user(user)
    end
  end
end
