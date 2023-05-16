def rps
  state = "tie"
  while state == "tie"
    puts "Rock, Paper or Scissors?"
    choice = gets.chomp.downcase
    moves = ["rock", "paper", "scissors"]
    comp_play = moves.sample
    if moves.include?(choice) == false
      puts "please enter a valid selection"
      choice = gets.chomp.downcase
    end

    if choice == comp_play
      puts "DRAW"
      state = "tie"
    end

    if choice == "rock" && comp_play == "paper"
      puts "computer wins!"
      state = "comp wins"
    elsif choice == "rock" && comp_play == "scissors"
      puts "You Win!"
      state = "player wins"
    elsif choice == "paper" && comp_play == "scissors"
      puts "Computeer Wins!"
      state = "comp wins"
    elsif choice == "paper" && comp_play == "rock"
      puts "You Win!"
      state = "player wins"
    elsif choice == "scissors" && comp_play == "rock"
      puts "Computer wins!"
      state = "comp wins"
    elsif choice == "scissors" && comp_play == "paper"
      puts "You Win!"
      state = "player win"
    end
  end
end

