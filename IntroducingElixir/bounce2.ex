defmodule Bounce2 do
@moduledoc """
Dale Weber <hybotics@skynet.run>

From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""
	def report do
		receive do
			x -> IO.puts("Divided to #{x / 2}")
			report()
		end
	end
end
