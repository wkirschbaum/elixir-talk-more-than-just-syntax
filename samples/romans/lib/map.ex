defmodule Custom do
  def map(list, f) do
    map_list([], list, f)
  end
  def map_list(result, [], _f) do
    Enum.reverse(result)
  end
  def map_list(result, [head | tail], f) do
    map_list([f.(head) | result], tail, f)
  end
end
