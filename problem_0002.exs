defmodule Problem0002 do
  def func(m, n, acc, max) do
    #IO.puts m
    cond do
      m > max -> acc
      true -> func(n, m + n, [m | acc], max)
    end
  end
end
Problem0002.func(1, 2, [], 4_000_000) |> Enum.filter(fn(x) -> rem(x, 2) == 0 end) |> Enum.reduce(0, fn(x, acc) -> x + acc end) |> IO.inspect
