defmodule StructDrop do
@moduledoc """
Dale Weber <hybotics@skynet.run>

From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""

	def fall_velocity(t) do
		fall_velocity(t.planemo, t.height)
	end

	def fall_velocity(:earth, distance) when distance >= 0 do
		:math.sqrt(2 * 9.8 * distance)
	end

	def fall_velocity(:moon, distance) when distance >= 0 do
		:math.sqrt(2 * 1.6 * distance)
	end

	def fall_velocity(:mars, distance) when distance >= 0 do
		:math.sqrt(2 * 3.71 * distance)
	end

end
