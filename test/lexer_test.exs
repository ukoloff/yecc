defmodule LexerTest do
  use ExUnit.Case
  # doctest Lexer

  test "tokenize" do
    {:ok,
      [{:"[", 1}, {:int, 1, 1}, {:",", 1}, {:atom, 1, :foo}, {:"]", 1}],
      1} = Yecc.lexer '[1, :foo]'
  end
end
