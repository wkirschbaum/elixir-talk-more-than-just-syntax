defmodule Store do
  def start_link do
    Agent.start_link(fn -> %{} end)
  end

  def get(store, key) do
    Agent.get(store, &Map.get(&1, key))
  end

  def put(store, key, value) do
    Agent.update(store, &Map.put(&1, key, value))
  end
end
