defmodule Rumbl.UserController do
	use Rumbl.Web, :controller

	def index(conn, _params) do
		users = Repo.all(Rumbl.User)
		render conn, "index.html", users: users
	end

	def show(conn, %{"id" => id}) do
		users = Repo.get(Rumbl.User, id)
		render conn, "show.html", users: users
	end
end