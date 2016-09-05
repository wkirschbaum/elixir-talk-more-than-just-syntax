defmodule SuperHumanTest do
  use ExUnit.Case

  test "add something" do
    {:ok, pid} = SuperHuman.start_link
    assert SuperHuman.hungry?(pid) == true
    SuperHuman.feed(pid)
    assert SuperHuman.hungry?(pid) == false
  end
end
