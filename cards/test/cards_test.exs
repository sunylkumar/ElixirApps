defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_test makes 20 cards" do 
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffling a deck randomizesit" do
    deck = Cards.create_deck
    # asser deck != Cards.shuffle(deck)
    refute deck == Cards.shuffle(deck)
  end

end
