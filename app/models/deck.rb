class Deck
  attr :cards

  # [["One", "Spades"], ["Queen", "Clubs"]]
  def initialize(data = [])
    @cards = []

    if data.empty?
      Card::SUITS.each do |suit|
        Card::VALUES.keys.each do |value|
          @cards << Card.new(value, suit)
        end
      end
      shuffle!
    else
      data.each do |card|
        @cards << Card.new(card["value"], card["suit"])
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end

  def draw!
    @cards.shift
  end
end
