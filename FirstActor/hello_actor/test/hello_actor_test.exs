defmodule HelloActorTest do
  use ExUnit.Case
  doctest HelloActor

  test "greets the world" do
    StartHelloActor.startFunc()
  end
end
