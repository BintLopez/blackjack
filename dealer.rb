require './player'

class Dealer < Player
	attr_reader :deck

	def initialize
		@deck = Deck.new
	end

  def deal
    @deck.deal_card
  end

  def shuffle_deck
    @deck.shuffle
  end

end