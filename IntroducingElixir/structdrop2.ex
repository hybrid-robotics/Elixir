defmodule StructDrop2 do
@moduledoc """
Dale Weber <hybotics@skynet.run>

From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.

Modified: 10-Dec-201 Dale Weber <hybotics@skynet.run> 
        I have modified this code to add another field (gravity)
        to the struct, and this function to use the new field.
"""
	@spec fall_velocity(struct()) :: number()

	@doc """
    	Calculates the velocity of an object falling on Earth
    	as if it were in a vacuum (no air resistance). The distance is
    	the height from which the object falls, specified in meters,
    	and the function returns a velocity in meters per second.
    	"""

	def fall_velocity(t) do
		fall_velocity(t.gravity, t.height)
	end

	def fall_velocity(gravity, distance) when distance >= 0 do
            	:math.sqrt(2 * gravity * distance)
 	end
end
