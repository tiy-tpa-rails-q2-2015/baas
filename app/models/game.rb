class Game < ActiveRecord::Base
  before_create :setup_game
  before_save   :serialize_game

  validates :name, presence: true

  def hit!
    return false if winner
    player << deck.draw!

    save!
  end

  def stay!
    return false if winner
    while dealer_score < 16
      dealer << deck.draw!
    end
    self.state["over"] = true
    save!
  end

  def winner
    if dealer_score > 21 ||
      (player_score > dealer_score &&
       player_score <= 21) &&
       over?

      return "player"
    elsif player_score > 21 ||
          (dealer_score == player_score ||
          dealer_score > player_score &&
          dealer_score <= 21) &&
          over?

      return "dealer"
    end
  end

  # a number
  def player_score
    player.sum(&:points)
  end

  # a number
  def dealer_score
    dealer.sum(&:points)
  end

  def player_hand
    player.map(&:display_name)
  end

  def dealer_hand
    dealer.map(&:display_name)
  end

  private

  def over?
    self.state["over"]
  end

  def setup_game
    self.deck = Deck.new

    2.times do |variable|
      player << deck.draw!
      dealer << deck.draw!
    end
  end

  def serialize_game
    self.state["deck"] = deck
    self.state["player"] = player
    self.state["dealer"] = dealer
  end

  def deck
    @deck ||= Deck.new(self.state["deck"]["cards"]) if self.state["deck"]
  end

  def deck=(new_deck)
    @deck = self.state["deck"] = new_deck
  end

  def player
    @player ||= (self.state["player"] || []).map { |card| Card.new(card["value"], card["suit"]) }
  end

  def dealer
    @dealer ||= (self.state["dealer"] || []).map { |card| Card.new(card["value"], card["suit"]) }
  end
end
