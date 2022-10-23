class Game
  def initialize
    player1 = Player.new("Player1")
    player2 = Player.new("Player2")
    turn = [player1, player2]
    while player1.score >= 1 && player2.score >= 1
      question = Question.new
      puts "#{turn.first.player}: #{question.new_question}"
      user_input = gets.to_i
      if (user_input == question.solution)
        puts "YES! You are correct."
        puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
        puts "----- NEW TURN -----"
        turn.reverse!
      else
        puts "Seriously? No!"
        turn.first.change_score
        puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
        puts "----- NEW TURN -----"
        turn.reverse!
      end
    end
    puts "#{turn.first.player} wins with a score of #{turn.first.score}"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
