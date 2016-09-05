defmodule Bar do
  def serve_drinks(%Human{age: age}) when age > 18 do
    {:ok, "Enjoy!"}
  end
  def serve_drinks(%Human{}) do
    {:error, "You are underage."}
  end
  def serve_drinks(_) do
    {:error, "Only serving humans."}
  end
end
