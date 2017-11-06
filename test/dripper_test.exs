defmodule DripperTest do
  use ExUnit.Case
  doctest Dripper

  test "greets the world" do
    assert Dripper.hello() == :world
  end
end
