defmodule Geom2 do
@moduledoc """
Dale Weber <hybotics@skynet.run>

from *Études for Elixir*, O'Reilly Media, Inc., 2013.
Copyright 2013 by J. David Eisenberg.
 """

	@doc """
	Calculates the area of a rectange (length * width)
	Defaults: width = 1, height = 1
	"""

	def area(length \\ 1, width \\ 1) do
		length * width
	end
end