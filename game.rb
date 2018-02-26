

class Game

  attr_accessor :game_over, :player1_turn

  def initialize
    @player1_turn = true
    @game_over = false
    @current_ans = 0
  end

  # invoke protected question generator, update instance var with correct answer
  def ask_q
    @current_ans = generate_q
  end

  # check if given answer is the same as instance answer
  def evaluate_answer
    print "Your answer please: "
    ans = $stdin.gets.chomp
    if ans.to_i == @current_ans.to_i
      return true
      puts 'True'
    else
      return false
      puts 'False'
    end
  end

  protected

  # generate random (plus/minus) math question with integers 1 - 20
  def generate_q
    str = ''
    num1 = self.random20
    num2 = self.random20
    player = @player1_turn ? 'Player 1' : 'Player 2'
    ans = 0

    if(self.random20 % 2 == 0)
      str = "#{player}: #{num1} plus #{num2}"
      ans = num1 + num2
    else
      str = "#{player}: #{num1} minus #{num2}"
      ans = num1 - num2
    end
    
    puts str
    ans
  
  end

  # generates number from 1 to 20 randomly
  def random20
    rand(20) + 1
  end

end


# g = Game.new
# g.ask_q
# g.evaluate_answer
# # puts g.ask_q