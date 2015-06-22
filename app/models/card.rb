class Card
  SUITS = [
    "Diamonds",
    "Hearts",
    "Clubs",
    "Spades"
  ]

  VALUES = {
    "Ace" => 11,
    "Two" => 2,
    "Three" => 3,
    "Four" => 4,
    "Five" => 5,
    "Six" => 6,
    "Seven" => 7,
    "Eight" => 8,
    "Nine" => 9,
    "Ten" => 10,
    "Jack" => 10,
    "Queen" => 10,
    "King" => 10
  }

  attr :suit
  attr :value

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def display_name
    "#{value} of #{suit}"  # => "2 of diamonds"
  end

  def points
    VALUES[@value]
  end
end
