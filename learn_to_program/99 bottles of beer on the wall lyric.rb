#
puts 'Lyrics of the song 99 Bottles of Beer'.center(80)
command = 99
while command > 2
	
	num = command
	num2 = command - 1
	puts num.to_s + ' bottles of beer on the wall ' + num.to_s + ' bottles of beer.'
    puts 'Take one down and pass it around, ' + num2.to_s + ' bottles of beer on the wall.'
    command -=1

   end
puts '2 bottles of beer on the wall 2 bottles of beer.'
 puts 'Take one down and pass it around, 1 bottle of beer on the wall.'
puts "1 bottle of beer on the wall, 1 bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer. "
puts "Go to the store and buy some more, 99 bottles of beer on the wall."



