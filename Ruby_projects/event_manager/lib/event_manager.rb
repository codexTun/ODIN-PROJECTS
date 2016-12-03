
#ruby lib/event_manager.rb
require 'csv'
require 'sunlight/congress'
require 'erb'
Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"



def clean_zipcode (zipcode)
	zipcode.to_s.rjust(5,"0")[0..4]

=begin
	Or use 
if zipcode.nil?
    "00000"
  elsif zipcode.length < 5
    zipcode.rjust(5,"0")
  elsif zipcode.length > 5
    zipcode[0..4]
  else
    zipcode
  end
=end 

end

def legislators_by_zipcode(zipcode)

	Sunlight::Congress::Legislator.by_zipcode(zipcode)
end 

def save_thank_you_letters (id, form_letter)

	Dir.mkdir("output") unless Dir.exists? "output"
	filename = "output/thanks_#{id}.html"
	File.open(filename, 'w') do |file|
		file.puts form_letter
	end
end


puts "EventManager Initialized!"
#puts File.exist? "event_attendees.csv"
#contents = File.read "event_attendees.csv"
#puts contents
=begin
lines = File.readlines "event_attendees.csv"
lines.each_with_index do |line, index| 
	next if index == 0
	columns = line.split(",")
	name = columns[2]
	puts name 
end 
=end
contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

template_letter = File.read "form_letter.erb.html"
erb_template = ERB.new template_letter

contents.each do |row|
	id = row[0]
	name = row[:first_name]
	zipcode = clean_zipcode(row[:zipcode])
	
	legislators = legislators_by_zipcode(zipcode)

	form_letter = erb_template.result(binding)


	save_thank_you_letters(id, form_letter)

	#puts "#{name} #{zipcode} #{legislator_strings}"
end 