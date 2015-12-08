defmodule Ask2 do
@moduledoc """
        From *Introducing Elixir*, O'Reilly Media, Inc., 2014.
        Copyright 2014 by Simon St.Laurent and J. David Eisenberg.

        I have heavily modified this code to add input error checking
            and conversion to using floats for the distance. I may pull
            some functions out of this module, and create a new Utility
            module.
        """

        @vsn 1.0

        @doc """
            Ask for a planet and distance to fall.

            Returns: Speed of fall (float), in meters per second
            """

        def line() do
            planemo = ask_planemo()
            distance = get_distance()
            mps = Drop.fall_velocity({planemo, distance})

            IO.puts("This fall will be at a rate of #{mps} meters/second.")
        end

        @doc """
            Prompt for the planet or moon.

            Input: A single digit.
            Returns: An atom with the planet name, or :invalid
            """

        def ask_planemo() do
            IO.puts(
            """
Which planet or moon are you on?
 1. Earth
 2. Earth's Moon
 3. Mars
 """
        )

            get_planemo()
        end

        @doc """
            Get the planet, and reprompt, if the input is invalid.

            Input: A single digit.
            Returns: An atom with the planet name, or :invalid
            """

        def get_planemo() do
            answer = String.strip(IO.gets("Which planet or moon? "))

            if (String.length(answer) > 1) do
                :invalid
                input_error(4)
                get_planemo()
            else
                value = String.first(answer)
                check = char_to_planemo(value)

                if (check == :invalid) do
                    input_error(2)
                    get_planemo()
                else
                    check
                end
            end
        end

        @doc """
            Get the distance of a fall. Reprompt if the input is not numeric.

            Returns: A float
            """

        def get_distance() do
            input = IO.gets("How far is the fall, in meters? ")
            value = String.strip(input)

            if (is_numeric(value)) do
                # Distance will be converted to a float here
                {distance, _} = Float.parse(value)
                distance
            else
                input_error(3)
                get_distance()
            end
        end

#
#   PRIVATE Functions
#

        defp char_to_planemo(char) do
            #   Convert the planet input selection to an atom with the planet name,
            #       or :invalid.
            #   Returns: An atom with the planet name, or :invalid.

            case char do
                "1" -> :earth
                "2" -> :moon
                "3" -> :mars
                _ -> :invalid
            end
        end

        defp input_error(number) do
            #   Print error messages.

            case number do
                1 -> IO.puts("Your selection is out of range! Please enter 1, 2, or 3")
                2 -> IO.puts("Invalid input! Please enter a number from 1 to 3.")
                3 -> IO.puts("Invalid input! Please enter a number.")
                4 -> IO.puts("Invalid input! Please enter only one digit!")
            end
        end

        defp is_numeric(str) do
            #   Check a string to see if it is numeric.
            #   Returns: Boolean, true = numeric, false = alphanumeric.

            case Float.parse(str) do
                {_num, ""} -> true
                {_num, _r} -> false               # _r : remainder_of_bianry
                :error     -> false
            end
        end
end
