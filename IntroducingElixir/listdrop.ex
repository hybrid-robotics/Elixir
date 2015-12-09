defmodule ListDrop do
@moduledoc """
From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""
	def falls(list) do
		falls(list, [])
	end

	def falls([], results) do
		Enum.reverse(results)
	end
  
	def falls([head|tail], results) do
		falls(tail, [Drop.fall_velocity(head) | results])
	end
end
