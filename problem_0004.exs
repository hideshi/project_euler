defmodule Problem0004 do
  def max_palindrome(min, max) do
    num_list =
      for i <- max..min do
        for j <- max..min do
          i * j
        end
      end
    num_list |> List.flatten |> Enum.filter(&is_palindrome?(&1 |> Integer.to_string |> String.codepoints)) |> Enum.sort(&(&1 > &2)) |> List.first
  end

  defp is_palindrome?([]) do
    true
  end

  defp is_palindrome?([_ | []]) do
    true
  end

  defp is_palindrome?([head | tail]) do
    [last | tail_without_last] = Enum.reverse tail
    cond do
      head == last -> is_palindrome?(Enum.reverse(tail_without_last))
      true -> false
    end
  end
end
IO.puts Problem0003.max_palindrome(100, 999)
