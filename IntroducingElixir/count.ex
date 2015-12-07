defmodule Count do
	@moduledoc """
	From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
	Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
    """

    @vsn 0.1

    def countDown(from) when from > 0 do
        IO.inspect(from)
        countDown(from - 1)
    end

    def countDown(from) do
        IO.puts("Blastoff!")
    end

    def countUp(limit) do
        countUp(1, limit)
    end

    defp countUp(count, limit) when count <= limit do
        IO.inspect(count)
        countUp(count + 1, limit)
    end

    defp countUp(count, limit) do
        IO.puts("finished!")
    end

end
