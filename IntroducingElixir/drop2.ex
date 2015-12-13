defmodule Drop2 do
@moduledoc """
Dale Weber <hybotics@skynet.run>

Functions calculating velocities achieved by objects dropped in a vacuum.

from *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""

    @vsn 0.4

    @doc """
    Calculates the velocity of an object falling on Earth
    as if it were in a vacuum (no air resistance). The distance is
    the height from which the object falls, specified in meters,
    and the function returns a velocity in meters per second.
    """

    @spec fall_velocity(tuple()) :: atom()

    def fall_velocity(where) do
        {planemo, distance} = where

        gravity = case planemo do
            :earth -> 9.8
            :moon -> 1.6
            :mars -> 3.71
         end

        velocity = :math.sqrt(2 * gravity * distance)

        description = cond do
            velocity == 0 -> :stable
            velocity < 5 -> :slow
            velocity >= 5 and velocity < 10 -> :moving
            velocity >= 10 and velocity < 20 -> :fast
            velocity >= 20 -> :speedy
        end

        if velocity > 20 do
            IO.puts("Look out below!")
        else
            IO.puts("Reasonable...")
        end

        {description, velocity}

    end

end
