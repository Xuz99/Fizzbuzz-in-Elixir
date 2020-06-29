defmodule Fizzbuzz do
  @moduledoc """
  Documentation for `Fizzbuzz`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Fizzbuzz.fizzbuzz()
      :myapp

  """
  def fizzbuzz do
      # List.range 1 100 
      # 1..100 |> Enum.each( (fn n -> IO.puts n end))

      Enum.map(1..100, fn n ->
                    cond do
                       rem(n, 3) == 0 && rem(n, 5) == 0 ->
                        "Fizzbuzz" 
                       rem(n, 3) == 0 ->
                        "Fizz"
                       rem(n, 5) == 0 ->
                        "Buzz"
                      true ->
                        n
                      end
                    end)
  end
end


  