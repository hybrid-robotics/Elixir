defmodule Planemo do
@moduledoc """
Dale Weber <hybotics@skynet.run>

From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""
	defstruct name: :nil, gravity: 0, diameter: 0, distance_from_sun: 0

	defimpl Valid, for: Planemo do
		def valid?(p) do
			p.gravity >= 0 && p.diameter >= 0 &&	 p.distance_from_sun >= 0
		end
	end
end
