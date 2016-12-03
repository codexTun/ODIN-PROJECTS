#some of the dates in the excel doc are entered differently.
#wday doesn't return the correct date 0-6 0=sunday
require 'CSV'
require 'date'


def clean_numbers(numbers)
	
	numbers.gsub!(/[^0-9]/, '')
	
	num_arr = numbers.split("")
	if num_arr.count == 10
		numbers.to_i
	elsif num_arr.count == 11 && num_arr[0] == "1"
		num_arr.shift
		num_arr.join.to_i
	else
		"??"
	end 

end 

def popular_hr(hr)
	counts = Hash.new(0)
	hr.each { |time| counts[time] += 1 }
		a = counts.max_by{|k,v| v}[0]
		
end



def popular_day(day)
	counts = Hash.new(0)
	day.each { |wday| counts[wday] += 1 }
		a = counts.max_by{|k,v| v}[0]
		
end


contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

hours = []
days = []
contents.each do |row|
	name = row[:first_name]
	#number = clean_numbers(row[5])

	d = DateTime.strptime(row[:regdate],'%m/%d/%Y %H:%M')
	hours << d.strftime("%H")
	days << d.wday





	#puts "#{name} #{number}"
end 

puts "popular hr: #{popular_hr(hours)} popular_day: #{popular_day(days)}"
