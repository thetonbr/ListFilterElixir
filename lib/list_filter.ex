defmodule ListFilter do
  def call(list) do
    filtered_numbers = filter_numbers(list)
    odd_numbers(filtered_numbers)
  end

  defp filter_numbers(list) do
    Enum.filter(list, fn x -> Integer.parse(x) != :error end)
  end

  defp odd_numbers(list) do
    odds = Enum.filter(list, fn x -> rem(String.to_integer(x), 2) != 0 end)
    Enum.count(odds)
  end
end
