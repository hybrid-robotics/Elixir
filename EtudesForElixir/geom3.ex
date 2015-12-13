defmodule Geom3 do
@moduledoc """
Dale Weber <hybotics@skynet.run>

from *Études for Elixir*, O'Reilly Media, Inc., 2013.
Copyright 2013 by J. David Eisenberg.
 """

	@doc """
	Calculates the area of a rectange (length * width),
		triangle (length * width) / 2, or ellipse
		(:math.pi() * length * width)

	Defaults: length = 1, width = 1
	"""

	def area(shape \\ :rectangle, length \\ 1, width \\ 1) do
		case shape do
			:rectangle -> length * width when length > 0 and width > 0
			:triangle -> (length * width) / 2 when length > 0 and width > 0
			:ellipse -> :math.pi() * length * width when length > 0 and width > 0
		end
	end
end