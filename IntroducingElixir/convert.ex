defmodule Convert do
@moduledoc """
Functions converting velocities between various units.

from *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""

	@vsn 0.2

	@doc """
	Functions to convert from Meters per Second
	"""

    @doc """
    mps_to_mph: Converts a velocity in Mps (Meters per Second) to MPH (Miles
    per hour.
    """

#	@spec mps_to_mph (number()) :: number()

    def mps_to_mph(mps) do

        2.23693629 * mps
    end

    @doc """
    mps_to_kph: Converts a velocity in Mps (Meters per Second) to Kph (Kilometers
    per hour).
    """

#	@spec mps_to_kph (number()) :: number()

    def mps_to_kph(mps) do

        3.6 * mps
    end

end