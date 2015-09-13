require_relative 'game.rb'
require 'pry'

describe Game do

  let(:num_players) { 1 }
  let(:deck) { Deck.new }
  let(:new_game) { Game.new(deck, 1)}
  
  it 'has a number of players' do 
    # binding.pry
    expect(new_game.num_players).to eq(1)
  end

  it 'has a deck' do
    expect(new_game.deck).to be_an_instance_of(Deck)
  end

end

describe Deck do

  let(:deck) { Deck.new }

  it "has 52 cards" do
    expect(deck.cards.size).to eq(52)
  end

  describe "#cards_for_suit" do

    it "makes 13 cards for a suit" do
      expect(deck.cards_for_suit("test_suit").size).to eq(13)
    end

  end
end

describe Card do

  let(:card) { Card.new("hearts", 2)}
  let(:face_card) { Card.new("diamonds", 12) }

  context "Each new card" do
    it "has the correct suit" do
      expect(card.suit).to eq("hearts")
    end

    it "has the correct value" do
      expect(card.value).to eq(2)
    end
  end

  context "Card is not a face card" do
    it "creates correct name based on suit and value" do
      expect(card.name).to eq("2 of hearts")
    end
  end

  context "Card is a face card" do
    it "creates correct name based on suit and value" do
      expect(face_card.name).to eq("queen of diamonds")
    end

    it "has a point value of 10" do
      expect(face_card.points).to eq(10)
    end
  end

end