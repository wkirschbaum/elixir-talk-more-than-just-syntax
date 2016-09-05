defmodule SuperHuman do
  use GenServer
  def start_link do
    GenServer.start_link(__MODULE__, %{hunger: 10})
  end
  def hungry?(pid), do: GenServer.call(pid, :hungry?)
  def feed(pid), do: GenServer.call(pid, :feed)

  def handle_call(:hungry?, _from, state) do
    {:reply, state[:hunger] > 5, state}
  end
  def handle_call(:feed, _from, %{hunger: hunger} = state) do
    {:reply, hunger, %{state | hunger: hunger - 5}}
  end
end
