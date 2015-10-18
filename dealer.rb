require './player'

class Dealer < Player
	attr_reader :deck

	def initialize
		@deck = Deck.new
		
	end
end