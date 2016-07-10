module Rps10k
  
  class Human < Player

    def make_move
      ask_for_move
      @move = gets.chomp 

      if valid_move?(@move) 
        @move
      else
        display_input_error
        make_move
      end
    end

    def ask_for_move
      puts "What's your move - rock, paper or scissors (r, p, s)?"
    end

    def valid_move?(move)
      %w(r p s).include?(move.downcase)
    end

    def display_input_error
      puts "That was not a vaild move. Choose r, p, or s."
    end

  end
end