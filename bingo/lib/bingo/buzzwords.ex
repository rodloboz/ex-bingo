defmodule Bingo.Buzzwords do
  @filepath "../../data/buzzwords.csv"

  @doc """
  Reads a CSV file of buzzwords and their respective point values.

  Returns a list of maps with each map containing the following keys:

    * `:phrase` - the buzzword (phrase)
    * `:points` - the point value
  """
  def read_buzzwords do
    @filepath
    |> Path.expand(__DIR__)
    |> File.read!
    |> String.split("\n", trim: true)
    |> Enum.map(&String.split(&1, ","))
    |> Enum.map(fn [phrase, points] ->
      %{phrase: phrase, points: String.to_integer(points)}
    end)
  end
end
