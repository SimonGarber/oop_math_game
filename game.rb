

class Game
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
   player1_roll = rand(20)
   puts "#{@player1.name} rolled  #{player1_roll}"
   player2_roll = rand(20)   
   puts "#{@player2.name} rolled  #{player2_roll}"
   if player1_roll > player2_roll
    puts "#{@player1.name} won the roll and is going first"
   else   
    puts "#{@player2.name} won the roll and is going first"
   end  
  end
end 
   


 






#ask_question
#get_answer
#check_answer
#update_score
#continue_game?
  







