#write your code here
#rspec simon_says_spec.rb

def echo (greeting)
	greeting
end 

def shout (greeting)
	greeting.upcase 
end 

def repeat (greeting, y = (no_argument_passed = true;nil)) 
		if no_argument_passed 
			"#{greeting} #{greeting}"
		else
		 	"#{greeting} " * (y-1) + "#{greeting}"
	end
end

def start_of_word (word, y) 
		array = word.split('')
		string = ""
		for i in 0..y-1 do
		 	string += array [i]
		 end 
		 string
end

def first_word (word) 
		array = word.split(' ')
		array[0]
end

def titleize(str)
     str.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but", "of", "by", "from"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  # returns the phrase with all the excluded words
end

