defmodule Problem0001 do
  def func(n, acc) do
    cond do
      n == 0 -> acc
      rem(n, 3) == 0 or rem(n, 5) == 0 -> func(n - 1, [n | acc])
      true -> func(n - 1, acc)
    end
  end
end
Problem0001.func(999, []) |> Enum.sum |> IO.inspect
