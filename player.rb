class Player

  attr_reader :id

  def initialize(id)
    @id = id
    @name = ask_player_for_name
  end

  def ask_player_for_name
    p "Hi Player #{id}.\nWhat's your name?"
    gets.chomp
  end

end