class Card

  attr_reader :suit, :value, :name
  attr_accessor :points

  def initialize(suit, value)
    @suit = suit
    @value = value
    @points = face_card_points || value
    @name = create_name(suit, value)
  end

  def face_cards
    { 
      1  => "ace",
      11 => "jack",
      12 => "queen",
      13 => "king"
    }
  end

  def create_name(suit, value)
    name_value = face_card_value(value) || value
    "#{name_value} of #{suit}"
  end

  def is_a_face_card?
    face_cards.keys.include?(@value)
  end

  def face_card_value(value)
    face_cards[value] if is_a_face_card?
  end

  def face_card_points
    10 if is_a_face_card?
  end


end