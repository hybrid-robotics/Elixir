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
			%Rumbl.User{id: "1", name: "JosÃ©", username: "josevalim", password: "ElixirLang"},
			%Rumbl.User{id: "2", name: "Bruce", username: "redrapids", password: "SevenLangs"},
			%Rumbl.User{id: "3", name: "Chris", username: "chrismccord", password: "Phoenix"},
			%Rumbl.User{id: "4", name: "John", username: "johnj", password: "ChulaVista"},
			%Rumbl.User{id: "5", name: "Robert", username: "robertg", password: "Paranoid"},
			%Rumbl.User{id: "6", name: "Dale", username: "hybotics", password: "Xt8=3pq$1Y-7"},
			%Rumbl.User{id: "7", name: "David", username: "davidw", password: "GoodGuy"},
			%Rumbl.User{id: "8", name: "Eugene", username: "eugene", password: "NewGuy"}
		]
	end

	def all(_module), do: []
end