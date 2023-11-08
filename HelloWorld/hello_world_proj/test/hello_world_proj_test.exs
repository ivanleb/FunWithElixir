defmodule HelloWorldProjTest do
  use ExUnit.Case
  doctest HelloWorldProj

  test "adding numbers" do
    assert HelloWorldProj.add(21,21) == 42
  end

  test "subtracting numbers" do
    assert HelloWorldProj.subtract(42,21) == 21
  end

  test "greets the world" do
    assert HelloWorldProj.hello() == :world
  end
end
