class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :dealer_hand, :player_hand, :dealer_score, :player_score, :winner
end
