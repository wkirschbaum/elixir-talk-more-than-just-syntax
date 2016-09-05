defmodule Spawner do
  def spawn_mulitple(0), do: IO.puts "done"
  def spawn_mulitple(num) do
    spawn(&long_process/0)
    spawn_mulitple(num - 1)
  end

  defp long_process do
    Process.sleep(1000)
    IO.puts "tick"
  end
end
