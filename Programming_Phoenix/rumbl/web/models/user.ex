defmodule Rumbl.User do
	use Rumbl.Web, :model

	schema "users" do
		field :name, :string
		field :username, :string
		field :password, :string, virtual: true
		field :password_hash, :string

<<<<<<< HEAD
		timestamps()
=======
		timestamps
>>>>>>> cf525771a70d71c2136b8e0c8ed5e97e618c0972
	end
end