defmodule Tower do
@moduledoc """
Dale Weber <hybotics@skynet.run>

From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""
	defstruct location: "", gravity: 9.8, height: 20, planemo: :earth, name: ""

	defimpl Inspect, for: Tower do
 		import Inspect.Algebra

		def inspect(item, _options) do
			metres = concat(to_string(item.height), "m:")
			msg = concat([metres, break, item.name, ",", break, item.location, ",", break,
				to_string(item.planemo)])
		end
	end

  	defimpl Valid, for: Tower do
  		def valid?(%Tower{height: h, planemo: p}) do
    			h >= 0 && p != nil
  		end
  	end
end
