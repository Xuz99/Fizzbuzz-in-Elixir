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

  def fizzbuzzDifferently(num) when rem(num, 5) == 0 and rem(num, 3) == 0, do: "FizzBuzz" 
  def fizzbuzzDifferently(num) when rem(num, 3) == 0, do: "Fizz" 
  def fizzbuzzDifferently(num) when rem(num, 5) == 0, do: "Buzz" 
  def fizzbuzzDifferently(num) ,  do: num  


  #TO RUN ->  Enum.map(1..100, fn n -> Fizzbuzz.fizzbuzzDifferently n end)
  #TO RUN 2 ->  Enum.map(1..100, &(Fizzbuzz.fizzbuzzDifferently(&1)))


end


  