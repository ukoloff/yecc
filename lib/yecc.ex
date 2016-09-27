defmodule Yecc do
  def lexer (s) do
    :lexer.string s
  end
  
  def parser (list) do
    :parser.parse list
  end
end
