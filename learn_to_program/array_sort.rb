#ruby desktop/ifeanyi/odin_projects/learn_to_program/rough.rb

puts 'Type as many word as you want, one word per line.'
words = gets.chomp
my_array = []
while words
    my_array.push (words)
	words = gets.chomp
	break if words == ''
end 
my_array.sort


=begin
for i in 1..my_array.length 
	if my_array[i] <=> my_array[i].next = -1
		puts my_array[i]
	else
		puts my_array[i].next
	
	end
end
=end

# I could sort the array using the sort method at the first baych of code above but the alternative to sort below does not work


a = 0
my_array3 = []

for j in 1..my_array3.length
my_array.each do |i| 
	if i < my_array[a] and i != my_array and my_array3[j] != i 
		my_array3.push(i)
		puts i
	elsif i > my_array[a] and i != my_array and my_array3[j] != i 
		my_array3.push(i)
		puts i
	elsif my_array3[j] != i
		my_array3.push(i)
		puts i 
	a += 1
		end
	end
end
puts my_array3