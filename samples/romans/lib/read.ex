defmodule Read do
  def read_file do
    File.read "hello"
    |> parse
  end

  defp parse(:ok, output) do
    ouput
  end

  defp parse(:error, _) do
    File.write "hello", "world"
    "world"
  end
end
