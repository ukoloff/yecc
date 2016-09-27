defmodule ParserTest do
  use ExUnit.Case

  test "parse" do
    {:ok, [:foo]} = Yecc.parser [{:"[", 1}, {:atom, 1, :foo}, {:"]", 1}]
  end
end
