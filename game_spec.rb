require_relative 'game.rb'
require 'pry'

describe Game do

  let(:num_players) { 1 }
  let(:deck) { Deck.new }
  let(:new_game) { Game.new(deck, 1)}
  
  
  it 'has a number of players' do 
    expect(new_game.num_players).to eq(1)
  end

  it 'has a deck' do
    expect(new_game.deck).to be_an_instance_of(Deck)
  end

  it 'has at least one player' do
    new_game.players.each do |player|
      expect(player).to be_an_instance_of(Player)
    end
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
  
    it 'should create 13 heart cards' do
      expect(deck.cards_for_suit('hearts').length).to eq(13)
    end
  end

  describe '#deal_card' do
    it 'should deal one card at a time' do
      a_card = @deck.deal_card
      expect(a_card).to be_an_instance_of Object
    end
  end

end


describe Card do

  let(:card) { Card.new("hearts", 2)}
  let(:face_card) { Card.new("diamonds", 12) }
  let(:ace) { Card.new("spades", 1) }

  describe "Each new card" do
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

  context "Card is an ace" do
    it "creates correct name based on suit and value" do
      expect(ace.name).to eq("ace of spades")
    end
  end

end


describe Player do

  let(:player) { Player.new(1)}

  context "Each new player" do
    it "has a player id" do
      expect(player.id).to eq 1
    end

  end
end
