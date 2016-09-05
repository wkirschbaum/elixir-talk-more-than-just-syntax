defmodule StoreTest do
  use ExUnit.Case

  test "add something" do
    {:ok, store} = Store.start_link
    Store.put(store, "name", "Wilhelm")
    assert Store.get(store, "name") == "Wilhelm"
  end
end
