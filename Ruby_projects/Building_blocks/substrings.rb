dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string, dictionary)
	sub_string = string.downcase.split(/[^'\w]+/)
	match = {}
	sub_string.each do |x|  
		if dictionary.include?(x)
		match[x] = match[x].to_i + 1
		end 
	end 
match
end 
substrings("Howdy, partner. How's it going partner?",dictionary)

