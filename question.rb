class Question
  player1 = Player.new("Player1")
  player2 = Player.new("Player2")
  turn = [player1, player2]
  while player1.score >= 1 && player2.score >= 1
    num1 = rand(1..20)
    num2 = rand(1..20)
    answer = num1 + num2
    puts "#{turn.first.player}: What does #{num1} plus #{num2} equal?"
    user_input = gets.to_i
    if (user_input == answer)
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
