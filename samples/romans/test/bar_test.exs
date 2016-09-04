defmodule BarTest do
  use ExUnit.Case, async: true

  test "serves over 18" do
    assert Bar.serve_drinks(%Human{name: "Old", age: 19})
      == {:ok, "Enjoy!"}
  end

  test "does not server under 18" do
    assert Bar.serve_drinks(%Human{name: "Old", age: 17})
      == {:error, "You are underage."}
  end

  test "does not server non humans" do
    assert Bar.serve_drinks(%{})
      == {:error, "Only serving humans."}
  end
end
