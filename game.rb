class Game
  def play
    rules = {Rock: "Scissors", Paper: "Rock", Scissors: "Paper"}
    choices = ["Rock", "Paper", "Scissors"]
    wins = {Player: 0, Computer: 0, Tie: 0, Rock: 0, Paper: 0, Scissors: 0}

    loop_count = 5
    while loop_count > 0

      player_choice = choices.sample
      computer_choice = choices.sample

      if computer_choice == player_choice
        wins[:Tie] += 1
        puts "PLAYER: #{player_choice} vs. COMPUTER: #{computer_choice} -- TIE"
      elsif rules.key(computer_choice).to_s == player_choice
        wins[:Player] += 1
        wins[player_choice.to_sym] += 1
        puts "PLAYER: #{player_choice} vs. COMPUTER: #{computer_choice} -- PLAYER WINS"
      else
        wins[:Computer] +=1
        wins[computer_choice.to_sym] += 1
        puts "PLAYER: #{player_choice} vs. COMPUTER: #{computer_choice} -- COMPUTER WINS"
      end
      loop_count -= 1
    end
    puts wins.inspect
  end
end

game = Game.new
game.play
