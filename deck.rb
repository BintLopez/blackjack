require_relative 'card.rb'


class Deck

  attr_reader :cards

  SUITS = %w(hearts diamonds spades clubs)

  def initialize
    # binding.pry
    @cards = create_cards
  end

  def create_cards
    all_cards = SUITS.map do |suit|
      cards_for_suit(suit)
    end
    # binding.pry
    all_cards.flatten!
  end

  def cards_for_suit(suit)
    (2..14).map do |i|
      Card.new(suit, i)
    end
  end

end