defmodule Human do
  defstruct name: "", surname: "", age: 0

  def talk(%Human{name: name}) do
    IO.puts "My name is #{name}"
  end
end
