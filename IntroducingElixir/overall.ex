defmodule Overall do
	@moduledoc """
	From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
	Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
    """

    @vsn 0.1

    def product([]) do
        0
    end

    def product(list) do
        product(list, 1)
    end

    def product([], accumulated_product) do
        accumulated_product
    end

    def product([head | tail], accumulated_product) do
        product(tail, head * accumulated_product)
    end

end
