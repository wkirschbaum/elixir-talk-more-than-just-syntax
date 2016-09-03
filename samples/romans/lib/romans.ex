defmodule Romans do
  def convert(romans) do
    romans
    |> map_to_ones
    |> ones_to_integer
  end

  defp map_to_ones(romans) do
    Map.get(%{
      "X" => String.duplicate("I", 10),
      "V" => String.duplicate("I", 5),
    }, romans, romans)
  end

  defp ones_to_integer(ones) do
    String.length(ones)
  end
end
