#ruby desktop/ifeanyi/odin_projects/learn_to_program/deaf_grandma.rb

puts 'Sonny say something to me, I\'m bored'.upcase
word = gets.chomp
year = rand(1930..1950)
=begin
while word == word.upcase and word != 'BYE'
	puts 'NO, NOT SINCE ' + year.to_s
	puts 'Sonny say something to me, I\'m bored'.upcase
    word = gets.chomp
    break if word == 'BYE'
end

while word == word.downcase
		puts 'HUH?! SPEAK UP SONNY!'
		word = gets.chomp
		break if word == 'BYE' or word == word.upcase


	end
=end

while word == word.downcase
		puts 'HUH?! SPEAK UP SONNY!'
		word = gets.chomp
		break if word == 'BYE'
end


while word == word.upcase and word != 'BYE'
	puts 'NO, NOT SINCE ' + year.to_s
	puts 'Sonny say something to me, I\'m bored'.upcase
    word = gets.chomp
    break if word = 'BYE' or word == word.downcase
    	
			
	end

