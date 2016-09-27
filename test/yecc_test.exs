defmodule YeccTest do
  use ExUnit.Case
  doctest Yecc

  test "build list" do
    [1, [2, :foo], :bar] = Yecc.parse "[1,[2, :foo], :bar] "
  end
end
