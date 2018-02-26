

class Player
  attr_reader :lives

  def initialize
    @lives = 3
  end

  # check if player has lives left to play on
  def end_check
    if @lives <= 0
      true
    else
      false
    end
  end

  # deduct life from player who has dun messed up
  def lose_life
    @lives -= 1
  end

end