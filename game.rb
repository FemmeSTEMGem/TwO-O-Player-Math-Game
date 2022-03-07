require "./player"
require "./questions"


class Game 
  
  def initialize
  @player_1 = Player.new('Playa_1')
  @player_2 = Player.new('Playa_2')
  @current_player = @player_2
  end
  
  def checking_lives
    return @player_1.lives > 0 && @player_2.lives > 0
      # puts @player_1.lives
  end

  def game_condition
    if checking_lives
      puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
      puts "\n----- NEW TURN -----\n"
    else
      switch
      puts "\n----- GAME OVER -----\n"
      puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    end
  end

  def switch
    if @current_player == @player_1
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end

# puts new_question.new_question
# puts new_question.solution

  def correct?
    while checking_lives
      switch
      @new_question = Question.new
      puts "#{@current_player.name}: #{@new_question.new_question}"
      @answer = $stdin.gets.chomp.to_i
      
      if @answer == @new_question.solution
        puts "#{@current_player.name}: Good Job"
        game_condition

      else 
        puts "#{@current_player.name}: Better luck next time!"
        @current_player.lives -= 1
        game_condition

      end
    end
  end

end
# geme = Game.new
# geme.checking_lives

#print "> "
#insanity = $stdin.gets.chomp



# Game
# ○ Contains game loop 
#   § Set current_player - CHECK
#   § Question prompt
#   § Finding winning condition
#   § Winning condition
# • Question
# ○ Generates two random numbers (between 1-20)
# ○ Prints/creates the question
# ○ Resolves if answer is correct

# Modules
# • Finding winning condition
# ○ Expected result vs. actual result
# • Winning condition
# ○ If player lost, subtract a life from the currend player
#   § If one of the lives = 0
#     □ Print who won and their score - exit loop
# Othewise print the current lives and start the next round - switch current_player