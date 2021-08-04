defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count how many strings are odd numbers" do
      list1 = ["banana", "2", "3", "house", "7", "13"]
      list2 = ["1", "2", "food"]
      list3 = ["fish", "2", "3", "9"]

      assert ListFilter.call(list1) == 3
      assert ListFilter.call(list2) == 1
      assert ListFilter.call(list3) == 2
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
