#Tic Tac Toe game Odin Projects
#ruby tic_tac_toe.rb
#player1 play mark 1, player2 mark 2
#the board is a grid of 2d array.
#You can only move your mark from the board after you have placed your assigned 3 max marks on the board
# will add more features like avoiding replacing 2 with 1 or vice versa. 
#This is a working code. Will refactor for elegance with time.
class TicTacToe
	attr_accessor :board
	def initialize()
		@board = []
	end 


	def create_board(val = 0 )
			3.times do |row_index|
			@board << Array.new(3) { val  }
			end
			@board
  	end

  	def display (board = nil)
  			if board
  				board.each do |r| 
 					puts r.each { |p| p}.join(" ")
 				end
 			else
 				@board.each do |r| 
 					puts r.each { |p| p}.join(" ")
 				end
  			
  			end 

  	end

  	def delete_me (arr, two_d, one_d)
		arr.each_with_index do |x,y|
			if y == two_d
				x[one_d] = 0
			end
		end
		arr
	end 

end




class Game
	def initialize
		@player_1 = Participants.new name: "Player 1", play_symbol: "1a, 1b and 1c"
		@player_2 = Participants.new name: "Player 2", play_symbol: "2a, 2b and 2c"
		@tic_tac_toe = TicTacToe.new
	end

	def play
		@start_board =@tic_tac_toe.create_board
		@player_1.instructions
		puts @tic_tac_toe.display
		# good --> puts @player_1.outcome(@start_board)

		while @player_1.outcome(@start_board) == false 

			puts "Type you number and position player : "
			#str_array =[]
			str_array = gets.chomp.split
			posit = str_array.map { |i| i.to_i }

			dup = @start_board.flatten
			dup_arr = dup.select { |element| dup.count(element) > 2 && element != 0 }

			
				if dup_arr.empty? || dup_arr.length < 7
					if (@start_board[posit[1]][posit[2]]) != posit[0]

						@start_board[posit[1]][posit[2]]  = posit[0] 
						puts "next player"
						@tic_tac_toe.display(@start_board)

							
					else
						puts "Please choose a different location:"
						
					end
				else
					puts "please current player remove one symbol usingg --> symbol , row location, column :"
	

					excess = gets.chomp.split
					excess_int = excess.map { |i| i.to_i }
					@tic_tac_toe.delete_me(@start_board,excess_int[1],excess_int[2])

					puts @tic_tac_toe.display(@start_board)
					puts "same player play again"
				end
			
		end 


		puts 'the last player won'
		puts 'Here, have an invicible potatoe!'



	end
end 




class Participants 
	attr_accessor :name, :play_symbol #play_symbol is player 1 or 2


	def initialize(config)
			@name = config[:name]
			@play_symbol = config[:play_symbol]
	end 

	def instructions
			puts "To Play, Player 1 use 1 maximum of three times. Player 2 use 2 maximum of three times"
      		puts "Type your mark, then space,followed by the row index, then space, then the column index"
      		puts "Example 1 2 1 puts 1 at row index 2, column index 1"
	end 
			
	def outcome (board)
			arr = []
			case
			when board[0] == [1,1,1] || board[0] == [2,2,2] 
				true
			when board[1] == [1,1,1] || board[1] == [2,2,2] 
				true
			when board[2] == [1,1,1] || board[2] == [2,2,2] 
				true
			
			

			when [ board[0][0], board[1][0], board[2][0] ]  == [1,1,1] 
				true
			when [ board[0][0], board[1][0], board[2][0] ]  == [2,2,2] 
				true

			when [ board[0][1], board[1][1], board[2][1] ]  == [1,1,1] 
				true
			when [ board[0][1], board[1][1], board[2][1] ]  == [2,2,2] 
				true

			when [ board[0][2], board[1][2], board[2][2] ]  == [1,1,1] 
				true
			when [ board[0][2], board[1][2], board[2][2] ]  == [2,2,2] 
				true

			when [ board[0][2], board[1][1], board[2][0] ] == [1,1,1] 
				true
			when [ board[0][2] , board[1][1] , board[2][0] ] == [2,2,2] 
				true

			
			else 
				false

			end 




	end



end 

game = Game.new()
game.play()

