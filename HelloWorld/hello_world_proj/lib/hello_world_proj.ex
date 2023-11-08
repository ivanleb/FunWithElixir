defmodule HelloWorldProj do
  @moduledoc """
  Documentation for `HelloWorldProj`.
  """
  def add(a, b) do
    a + b
  end

  def subtract(a, b) do
    a - b
  end


  @doc """
  Hello world.
  
  ## Examples

    run iex.bat -S mix
      iex> HelloWorldProj.hello()
      :world

  """
  def hello do
    :world
  end
end
