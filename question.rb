class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def new_question
    return "What does #{@num1} plus #{@num2} equal?"
  end

  def solution
    return @answer
  end
end
