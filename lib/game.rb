class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    # @players = [player1, player2]
  end

  # def player1
  #   @players.first
  # end
  #
  # def player2
  #   @players.last
  # end

  def attack(player)
    player.receive_damage
  end
end
