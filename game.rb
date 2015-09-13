require_relative 'deck.rb'
require_relative 'dealer.rb'
require_relative 'player.rb'
require_relative 'scorer.rb'

class Game
  attr_reader :deck, :num_players

  def initialize(deck, num_players)
    # binding.pry
    @deck = deck
    @num_players = num_players
  end

end