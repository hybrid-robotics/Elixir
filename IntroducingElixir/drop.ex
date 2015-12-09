defmodule Drop do
@moduledoc """
Functions calculating velocities achieved by objects dropped in a vacuum.

From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""

    @vsn 0.4

	@doc """
 	Calculates the velocity of an object falling on Earth
 	as if it were in a vacuum (no air resistance). The distance is
	the height from which the object falls, specified in meters,
	and the function returns a velocity in meters per second.
	"""

    @spec fall_velocity(tuple()) :: number()

    def fall_velocity(where) do
        {planemo, distance} = where

        gravity = case planemo do
            :earth -> 9.8
            :moon -> 1.6
            :mars -> 3.71
            _ -> 0
        end

        :math.sqrt(2 * gravity * distance)

    end

end
