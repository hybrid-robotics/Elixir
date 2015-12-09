defmodule Ask do
@moduledoc """
From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
Copyright 2014 by Simon St.Laurent and J. David Eisenberg.
"""

    @vsn 0.1

    def chars() do
        IO.puts(
        """
Which planet or moon are you on?
 1. Earth
 2. Moon
 3. Mars
 """
    )

        IO.getn("Which? ")
    end

    def line() do
        planemo = get_planemo()
        distance = get_distance()
        Drop.fall_velocity({planemo, distance})
    end

    defp get_planemo() do
        IO.puts(
        """
Which planet or moon are you on?
 1. Earth
 2. Earth's Moon
 3. Mars
 """
        )

        answer = IO.gets("Which? ")
        value=String.first(answer)
        check = char_to_planemo(value)

        if (check == :invalid) do
            input_error(2)
            line()
        end
    end

    defp get_distance() do
        input = IO.gets("How far is the fall (meters)? ")
        value = String.strip(input)

        if (String.is_number(value)) do
            number = String.to_integer(value)

            if (number < 1 or number > 3) do
                IO.puts("Your selection is out of range! Please enter 1, 2, or 3")
                line()
            else
                String.to_integer(value)
            end
        else
            IO.puts("Invalid input! Please enter a value from 1 to 3.")
            line()
        end
    end

    defp char_to_planemo(char) do
        case char do
            "1" -> :earth
            "2" -> :moon
            "3" -> :mars
            _ -> :invalid
        end
    end

    defp input_error(number) do
        case number do
            1 -> IO.puts("")
            2 -> IO.puts("")
        end
    end

end