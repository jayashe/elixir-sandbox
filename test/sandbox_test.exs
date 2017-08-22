defmodule SandboxTest do
  use ExUnit.Case
  doctest Sandbox

  test "greets the world" do
    assert Sandbox.hello() == :world
  end

  test "greets me by name" do
  	assert Sandbox.hello("jay") == "Hello, jay"
  end

  test "easy roman numerals" do
    assert Sandbox.compute("III") == 3
  end

  test "roman with 2 characters" do
    assert Sandbox.compute("VI") == 6
  end

  test "roman with some negation" do
    assert Sandbox.compute("IV") == 4
  end

  test "complicated roman numeral" do
    assert Sandbox.compute("XXIV") == 24
  end
end
