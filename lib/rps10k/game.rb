
module Rps10k
  class Game
    def initialize
      @player1 = Human.new
      @player2 = Computer.new
      @winner = nil
    end

    def play
      until game_over?
        @player1.make_move
        @player2.make_move
        display_tie_message unless game_over?
      end
      who_won(@player1.move, @player2.move) 
      display_winner
    end

    def game_over?
      @player1.move != @player2.move
    end

    def display_winner
      puts "#{@winner} won! You chose #{@player1.move} and computer chose #{@player2.move}"
    end

    def who_won(move1, move2)
      winning_combos = {'r' => 's', 's' => 'p', 'p' => 'r'}
      @winner = winning_combos[move1] == move2 ? 'You' : 'Computer'
    end

    def display_tie_message
      puts "Tie game! Choose again!"
    end
  end

end