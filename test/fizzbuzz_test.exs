defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "greets the world" do
    assert Fizzbuzz.fizzbuzz() == :myapp
  end
end
