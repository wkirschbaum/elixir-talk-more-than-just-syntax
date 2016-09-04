defmodule Fib do
  def fib(n) when n <= 1 do n end
  def fib(n) do fib(n-1) + fib(n-2) end
end
