defmodule HelloActor do
  @moduledoc """
  Documentation for `HelloActor`.
  """
  def safeShutdown do
    IO.puts("Shutdown")
    exit(:normal)
  end
  @doc """
  Hello world.

  ## Examples

      iex> HelloActor.loop()
      :world

  """
  def loop do
    IO.puts("start receiving")
    receive do
      {:greet, name} -> IO.puts("Hello #{name}")
      {:praise, name} -> IO.puts("#{name}, you're amazing")
      {:celebrate, name, args} -> IO.puts("Here's to another #{args} years, #{name}")
      {:shutdown} -> safeShutdown()
    end
    loop()
  end
end
