defmodule Bingo.Square do
  defstruct [:phrase, :points, :marked_by]

  alias __MODULE__

  @doc """
  Creates a square from the given `phrase` and `points`.
  """
  def new(phrase, points) do
    %Bingo.Square{phrase: phrase, points: points}
  end

  @doc """
  Creates a square from the given map with `:phrase` and `:points` keys.
  """
  def from_buzzword(%{phrase: phrase, points: points}) do
    Square.new(phrase, points)
  end
end