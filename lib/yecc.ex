defmodule Yecc do
  def lexer(s) do
    :lexer.string s
  end

  def parser(list) do
    :parser.parse list
  end

  @spec parse(binary) :: list
  def parse(s) do
    {:ok, tokens, _} = s |> to_char_list |> lexer
    {:ok, list}      = parser tokens
    list
  end
end
