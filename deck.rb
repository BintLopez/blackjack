require_relative 'card.rb'


class Deck

  attr_reader :cards

  SUITS = %w(hearts diamonds spades clubs)

  def initialize
    @cards = create_cards
    shuffle
  end

  def create_cards
    all_cards = SUITS.map do |suit|
      cards_for_suit(suit)
    end
    all_cards.flatten!
  end

  def cards_for_suit(suit)
    (1..13).map do |i|
      Card.new(suit, i)
    end
  end

  def shuffle
    @cards.shuffle!
  end

end