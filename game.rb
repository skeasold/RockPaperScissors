class Game
  rules = {
    Rock: "Scissors",
    Paper: "Rock",
    Scissors: "Paper"
  }

  choices = ["Rock", "Paper", "Scissors"]

  wins = {
    player: 0,
    computer: 0,
    tie: 0
  }

  puts "Please type a choice."
  player_choice = gets.chomp.capitalize
  computer_choice = "Paper"

  if computer_choice == player_choice
    wins[:tie] += 1
    puts "PLAYER: #{player_choice} vs. COMPUTER: #{computer_choice} -- TIE"
  elsif rules.key(computer_choice).to_s == player_choice
    wins[:player] += 1
    puts "PLAYER: #{player_choice} vs. COMPUTER: #{computer_choice} -- PLAYER WINS"
  else
    wins[:computer] +=1
    puts "PLAYER: #{player_choice} vs. COMPUTER: #{computer_choice} -- COMPUTER WINS"
  end
end
