

class Game
  def initialize
    @player1 = nil
    @player2 = nil
    @current_player = nil
    @winning_player = nil
  end
  def get_player_names
    puts "Please enter your name"
    player1_name = gets.chomp
    @player1 = create_player(player1_name)
    p @player1
    player2_name = gets.chomp
    @player2 = create_player(player2_name)
    p @player2
    puts "Welcome to the game #{player1_name} and #{player2_name}" 
  end
  def create_player(player_name)
    Player.new(player_name)
  end
  
  def set_current_player
   player1_roll = rand(1..20)
   puts "#{@player1.name} rolled  #{player1_roll}"
   player2_roll = rand(1..20)   
   puts "#{@player2.name} rolled  #{player2_roll}"
   if player1_roll > player2_roll
    puts "#{@player1.name} won the roll and is going first"
    @current_player = @player1
  else   
   puts "#{@player2.name} won the roll and is going first"
   @current_player = @player2
  end  
 end
 def start_game 
  while @player1.life_points > 0 && @player2.life_points > 0 do
    q = Question.new
    puts q.print_question
    answer = gets.chomp
    puts q.check_question(answer)
    if q.check_question(answer) === false
      @current_player.life_points -= 1
      puts "Ouch! Incorrect answer"
      puts "#{@current_player.name} has #{@current_player.life_points} life points left "
    else
      puts "Nicely done!"
    end
    if @current_player == @player1
      @current_player = @player2
      puts "-----------New Turn--------------"
      puts "Score #{@player1.name} --- #{@player1.life_points}/3 vs #{@player2.name} --- #{@player2.life_points}/3"
    else @current_player = @player1
    end
     if @player1.life_points < 1 || @player2.life_points < 1
      puts "Game Over!"
      if @player1.life_points < 1
         @winning_player = @player2
      else
         @winning_player = @player1
     end
     puts "#{@winning_player.name} is the winner! "
   end
  end 
  end
end
    
      
  

  
   


 






#ask_question
#get_answer
#check_answer
#update_score
#continue_game?
  







