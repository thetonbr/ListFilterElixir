defmodule ListFilter do
  def call(list) do
    list
    |> Enum.filter(&(Integer.parse(&1) != :error))
    |> Enum.count(&(rem(String.to_integer(&1), 2) != 0))
  end
end
