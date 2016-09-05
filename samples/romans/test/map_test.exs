defmodule CustomTest do
  use ExUnit.Case, async: true

  test "maps 1 to 1" do
    r = Custom.map([1], fn(x) -> x * x end)
    assert r == [1]
  end

  test "maps 2 to 4" do
    r = Custom.map([2], fn(x) -> x * x end)
    assert r == [4]
  end

  test "maps 1 2 3 to 1 4 9" do
    r = Custom.map([1, 2, 3], fn(x) -> x * x end)
    assert r == [1, 4, 9]
  end
end
