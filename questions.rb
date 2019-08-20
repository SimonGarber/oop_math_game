class Question
  def initialize
    @a = rand(1..9)
    @b = rand(1..9)  
  end
  def print_question
    puts "what is #{@a} + #{@b}?"
  end
  def check_question(answer)
    puts answer
    @a + @b == answer.to_i
  end
end