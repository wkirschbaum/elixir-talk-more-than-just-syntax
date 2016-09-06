defmodule Romans do
  @doc ~S"""
  Converts roman numerals to integers

  ## Examples

      iex> Romans.convert("XII")
      13

  """
  def convert(romans) do
    romans
    |> to_ones
    |> ones_to_integer
  end

  defp to_ones(romans) do
    romans
    |> String.replace("IV", ones(4))
    |> String.replace("V", ones(5))
    |> String.replace("X", ones(10))
  end

  defp ones_to_integer(ones) do
    String.length(ones)
  end

  defp ones(num) do
    String.duplicate("I", num)
  end
end
