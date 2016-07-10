require_relative "rps10k/version"
require_relative "rps10k/game"
require_relative "rps10k/player"
require_relative "rps10k/human"
require_relative "rps10k/computer"

module Rps10k

  def self.play
    Game.new.play
  end

end

