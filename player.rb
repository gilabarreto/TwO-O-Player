class Player
  attr_accessor :player, :score

  def initialize(player, score = 3) # Getter
    @player = player
    @score = score
  end

  def change_score # Setter
    self.score = score - 1
  end
end
