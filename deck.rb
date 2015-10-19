require_relative 'card.rb'


class Deck

  attr_reader :cards

  SUITS = %w(hearts diamonds spades clubs)

  SUITS.each do |suit|
    define_method("#{suit}".to_sym) do
      cards.select { |card| card.suit == suit }
    end
  end

  def initialize
    @cards = create_cards
  end

  def shuffle
    cards.shuffle!
  end

  def deal_card
    cards.pop
  end

  private

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

end