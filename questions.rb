class Question

  def initialize
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @solution = @num_1 + @num_2
  end

  def new_question
    return "What does #{@num_1} plus #{@num_2} equal?"
  end

  def solution
    return @solution
  end

end

# new_question = Question.new
# # puts "Current player: #{new_question.question}"
# puts new_question.new_question
# puts new_question.solution

# q1 = Question.new
# p q1



# • Question
# ○ Generates two random numbers (between 1-20)
# ○ Prints/creates the question
# ○ Resolves if answer is correct
# "What does 5 plus 3 equal?"