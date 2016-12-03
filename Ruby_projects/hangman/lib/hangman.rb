
require 'yaml'
class Word_
	attr_accessor :word
	def initialize()
		@word = ""
	end 



	def get_word


		dictionary = File.readlines "5desk.txt"
		word_arr = []
		dictionary.each do |line|
			word_arr << line
		end

		word_arr.each { |word| word.chomp!("\r\n") }


		word = word_arr.select{|x| x.size.between?(5,12)}

		@word << word[rand(0...word.length)]
		

	end 





	def missing_word(word)

		word_arr = word.split("")
		
		word_size = word_arr.size
		num_word_delete = 3

		rand_outcome = {}
		hash_objects = 8
		hash_keys_values = 4

		while hash_objects > 0
  			rand_outcome[hash_keys_values] = hash_keys_values
  			hash_objects -=1
  			hash_keys_values+=1
		end 
		
		rand_outcome.each do |k,v|
  			if word_size == k 
    			while num_word_delete > 0
    				word_arr[(rand(0...v))] = "_"
    				num_word_delete -=1
   				 end
   
  			end 
		end 
		spaced = word_arr.each { |x| x << " "}.join

	

	end 



end



class Players

	attr_accessor :name
	def initialize(name)
		@name = name
	end 

end


class Game

	def initialize()
		@player = Players.new(player_name = "")
		@incomplete_word = Word_.new
		@complete_word = Word_.new

	end 

	def play()


		@complete_word_str = @complete_word.get_word
		@incomplete_word_str = @incomplete_word.missing_word(@complete_word_str)

		@trials = 10
		@player_word = ""


		puts "do you want to load earlier game, if any? y/n"
		answer = gets.chomp

		if answer == "y"
			load_game

		elsif answer == "n"
			puts "whats your game name:"
			@player_name = gets.chomp

		end

		
		puts "Welcome #{@player_name}"
		puts "complete this word >>" 
		puts @incomplete_word_str
		puts "You have #{@trials} trials"
		
		
		complete_word_arr = @complete_word_str.split("")
		
		
		

			while @complete_word_str!= @player_word && @trials > 0 
			


			puts "Pick a letter and a number as location separated by a space"
			puts "The numbering of the words starts at zero:"
			letter_location = gets.chomp.downcase.split(" ")
			

			@trials -= 1 
				if complete_word_arr[letter_location[1].to_i] == letter_location[0]
						puts "correct guess #{@player_name}! #{@trials} trials left"
						@incomplete_word_str.gsub!(/\s+/, "") 
						@incomplete_word_str[letter_location[1].to_i] = letter_location[0]
						@player_word = @incomplete_word_str
						puts @incomplete_word_str.gsub(""," ")

						puts "do you want to save your progress? y/n"
						answer = gets.chomp
						if answer == "y"
							save_game
						end



							if @trials < 1 
								puts " Your Trials are up! Lets try again. Keep up the persistence"

							elsif @complete_word_str == @player_word 
								puts " You Won #{@player_name}! You were destined to win."
							end 


				elsif complete_word_arr[letter_location[1].to_i] != letter_location[0]
					puts "incorrect guess,#{@trials} trials left. Try again"

						puts "do you want to save your progress? y/n"
						answer = gets.chomp
						if answer == "y"
							save_game
						end

							if @trials < 1 
								puts " Your Trials are up! Lets try again. Keep up the persistence"

							end 


				end 
			end 

			puts "Game Over"
	end

	def save_game
	 names = [@trials, @player_word, @complete_word_str, @incomplete_word_str, @player_name]
     File.open("./hangman.yml", 'w') { |f| f.puts(names.to_yaml) }
     exit
    end

    def load_game
     

      names = YAML.load(File.read "./hangman.yml")
      @trials = names[0]
      @player_word = names[1]
      @complete_word_str = names[2]
      @incomplete_word_str = names[3]
      @player_name = names[4]
    
    end
 
end




   
  


		



game = Game.new
game.play()
