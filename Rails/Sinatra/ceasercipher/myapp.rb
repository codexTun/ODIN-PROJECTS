require 'sinatra'
require 'sinatra/reloader'
require './caesar_cipher.rb'



    
	
	


get '/'  do
	
	
	gues = params["guess"]
	message = cipher(gues, 1)
	
	erb :index, :locals => {:message => message}


end



