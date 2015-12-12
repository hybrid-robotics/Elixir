defmodule StructDrop3 do
@moduledoc """
Dale Weber <hybotics@skynet.run>

From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.

Modified: 10-Dec-201 Dale Weber <hybotics@skynet.run> 
	I have modified this code to add another field (gravity)
        	to the struct, and this function to use the new field.
"""

	@doc """
	Modified: 10-Dec-201 Dale Weber <hybotics@skynet.run> 
        		I have modified this code to add another field (gravity)
        		to the struct, and this function to use the new field.
        	"""
	def fall_velocity(%Tower{gravity: gravity, height: distance}) do
		fall_velocity(gravity, distance)
	end

	def fall_velocity(gravity, distance) when distance >= 0 do
		:math.sqrt(2 * gravity * distance)
	end
end
