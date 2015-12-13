defmodule Geom5 do
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
	@spec area(tuple()) :: number()

	def area(tup) do
		{shape, a, b} = tup
		area(shape, a, b)
	end

	@spec area(atom(), number(), number()) :: number()

	defp area(:rectangle, length, width) when length > 0 and width > 0 do
		length * width
	end

	defp area(:triangle,  base, height) when base > 0 and height > 0 do
		(base * height) / 2
	end

	defp area(:ellipse, a, b) when a > 0 and b > 0 do
		:math.pi() * a * b
	end

	defp area(_, _, _) do
		0
	end
end