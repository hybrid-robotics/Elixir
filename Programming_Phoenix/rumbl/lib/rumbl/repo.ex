defmodule Rumbl.Repo do

	@moduledoc """
		In memory Repository
	"""

	def get(module, id) do
		Enum.find all(module), fn map -> map.id == id end
	end

	def get_by(module, params) do
		Enum.find all(module), fn map ->
			Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
		end
	end

	def all(Rumbl.User) do
		[
			%Rumbl.User{id: "1", name: "JosÃ©", username: "josevalim", password: "<3<3elixir"},
			%Rumbl.User{id: "2", name: "Bruce", username: "redrapids", password: "7langs!"},
			%Rumbl.User{id: "3", name: "Chris", username: "chrismccord", password: "Phoenix"},
			%Rumbl.User{id: "4", name: "John", username: "johnj", password: "Scenic"},
			%Rumbl.User{id: "5", name: "Robert", username: "robertg", password: "Scenic2"},
			%Rumbl.User{id: "6", name: "Dale", username: "hybotics", password: "Xt8=3pq$1Y-7"},
			%Rumbl.User{id: "7", name: "David", username: "davidw", password: "NewestGuy"}
		]
	end
  
	def all(_module), do: []
end