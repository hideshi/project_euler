defmodule Problem0005 do
  def smallest_multiple(max) do
    range =
      max..2
      |> Enum.to_list
      |> List.foldl([], fn (x, acc) ->
          cond do
            acc |> Enum.map(&divisible?(&1, x)) |> Enum.any? -> acc
            true -> [x | acc]
          end
        end)
    divide(range, 1)
  end

  defp divide(range, dividend) do
    cond do
      range
      |> Enum.map(&divisible?(dividend, &1))
      |> Enum.all? -> dividend
      true -> divide(range, dividend + 1)
    end
  end

  defp divisible?(dividend, divisor) do
    if rem(dividend, divisor) == 0 do
      true
    else
      false
    end
  end
end
IO.puts Problem0005.smallest_multiple(20)
