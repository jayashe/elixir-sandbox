defmodule Sandbox do
  @moduledoc """
  Documentation for Sandbox.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Sandbox.hello
      :world

  """
  def hello do
    :world
  end

  def hello(name) do
    "Hello, " <> name
  end

  def numeralMap do
    %{
      "I" => 1,
      "V" => 5,
      "X" => 10
    }
  end

  def compute(roman) do
    String.codepoints(roman)
    |> Enum.map(fn(x) -> getFromMap x end)
    |> Enum.reverse
    |> Enum.reduce({0, 0}, fn(current, {runningTotal, previousVal}) -> 
      if (current >= previousVal) do
        {runningTotal + current, current} 
      else 
        {runningTotal - current, current} 
      end
    end)
    |> elem(0)
  end

  def getFromMap(val) do
    numeralMap()[val]
  end
end
