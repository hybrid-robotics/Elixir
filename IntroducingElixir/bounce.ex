defmodule Bounce do
@moduledoc """
Dale Weber <hybotics@skynet.run>

From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""
	def report(count) do
		receive do
			msg -> IO.puts("Received #{count}: #{msg}")
			report(count + 1)
		end
	end
end
