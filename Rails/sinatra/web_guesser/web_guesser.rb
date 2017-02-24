require 'sinatra'
require 'sinatra/reloader'


number = rand(0..100)
trials = 5


class Game 





	def self.check_guess(number,gues)

		if gues == "" 
	 		"Put a number"

		elsif gues.to_i > (number + 5) 
	 		"Way Too High!"
	  

		elsif gues.to_i < (number - 5) 
			"Way Too Low!"


		elsif gues.to_i > number 
			"Too High "

		elsif gues.to_i < number && gues != "" 
			"Too low!"

		elsif gues.to_i == number && gues != "" 
		
			"You got it right!. The secret number is #{number}"
		end 


	end 




	def self.color_background(message)
		if message ==  "Way Too High!" || message == "Way Too Low!"
			color = "#f3172d"

		elsif message ==  "Too High " || message == "Too low!"
			color = "#ffe5e5"

		else 
			color = "#00ffab"

		end 
	end 




	def self.trials(color) 
	
		if trials == 0
			number = rand(0..100)
			trials = 5
			"You have lost and a new number has been generated"
				
		

		elsif color == "#00ffab"
			trials = 5
			number = rand(0..100)
			"correct number"
				
		else 
			"You have #{trials -= 1} left"


		end 
	end 



end 



get '/'  do
	
	
	gues = params["guess"]
	message = Game.check_guess(number,gues)
	color = Game.color_background(message)
	tracking = Game.trials(color)
	
	erb :index, :locals => {:number => @@number, :message => message, :color => color, :tracking => tracking}


end


