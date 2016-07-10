module Rps10k
  class Computer < Player

    def make_move
      @move = %w(r p s).sample
    end
  
  end
end