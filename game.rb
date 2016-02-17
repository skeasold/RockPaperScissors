class Game
  def play
    rules = {rock: "scissors", paper: "rock", scissors: "paper"}
    wins = {player: 0, computer: 0, tie: 0, rock: 0, paper: 0, scissors: 0}
    loop_count = 1000

    while loop_count > 0
      player_choice = rules.values.sample
      computer_choice = rules.values.sample
      if computer_choice == player_choice
        wins[:tie] += 1
        puts "PLAYER: #{player_choice} vs. COMPUTER: #{computer_choice} -- TIE"
      elsif rules.key(computer_choice).to_s == player_choice
        [:player, player_choice.to_sym].each {|sym| wins[sym] += 1}
        puts "PLAYER: #{player_choice} vs. COMPUTER: #{computer_choice} -- PLAYER WINS"
      else
        [:computer, computer_choice.to_sym].each {|sym| wins[sym] += 1}
        puts "PLAYER: #{player_choice} vs. COMPUTER: #{computer_choice} -- COMPUTER WINS"
      end
      loop_count -= 1
    end
    puts wins.inspect
  end
end

game = Game.new
game.play
