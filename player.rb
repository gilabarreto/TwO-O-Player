class Player
  attr_accessor :player, :score

  def initialize(player, score = 3) # Getter
    @player = player
    @score = score
  end

  def change_score # Setter
    self.score = score - 1
  end

  player1 = Player.new("Player1")
  player2 = Player.new("Player2")
end
