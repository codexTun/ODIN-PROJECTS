#write your code here
#rspec pig_latin_spec.rb

require 'active_support/core_ext/enumerable'
def translate (word)
	string=""
	words = word.split("")
	first_two =Array(words[0] + words[1]).join("").split("")
	if Array(words[0]).any?{ |x| ["a","e","i", "o","u"].include?(x)}
		words << "ay"
		words.join("")
	elsif first_two.any?{ |x| ["a","e","i", "o","u"].exclude?(x) && next}
		for i in 0..words.length
			string += words[i+2]
		end 
		string << "ay"
		string
	else
		for i in 0..words.length
			string += words[i+1]
		end 
		string << "ay"
		string 
	end 
end 

