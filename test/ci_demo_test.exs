defmodule CiDemoTest do
  use ExUnit.Case
  use ExCheck
  doctest CiDemo

  test "the truth" do
    assert 1 + 1 == 2
  end

  property "addition is commutative" do
    for_all {x, y} in  {int(), int()} do
      assert x + y == y + x
    end
  end
end
