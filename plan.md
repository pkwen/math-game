class Player
  initialize
  @lives = 3
  @dead = false
end

class Game
  initialize
  @player1_turn?= true
  @game_over = false
  end

  private

  def generateQ
    generate math question
    returns { question: x, answer: y}
  end

  def check_game_state
    if(player1.dead) {
      player 2 wins
      game_over = true
    } elsif player2.dead {
      player 1 wins
      game_over = true
    } else 
    @player1_turn? = !@player1_turn
  end

  def rando
    generate random number between 1-20
  end

  while(!game_over)
  generateQ
  assertAnswer
  check_game_state
  end
  output winner