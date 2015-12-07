defmodule Fact do

    def factorialDown(n) when n > 1 do
        IO.puts("Calling from #{n}.")
        result = n * factorialDown(n - 1)
        IO.puts("#{n} yields #{result}.")
        result
    end

    def factorialDown(n) when n <= 1 do
        IO.puts("Calling from 1.")
        IO.puts("1 yields 1.")
        1
    end

    def factorialUp(n) do
        factorialUp(1 , n, 1)
    end

    defp factorialUp(current, n, result) when current <= n do
        new_result = result * current
        IO.puts("#{current} yields #{new_result}.")
        factorialUp(current + 1, n, new_result)
    end

    defp factorialUp(_current, _n, result) do
        IO.puts("finished!")
        result
    end

end
