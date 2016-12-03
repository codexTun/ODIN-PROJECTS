#i'm getting 32 instead of 121 for number of lines

linees = []
File.open('text.txt').each("  "){ |line| linees << line}
lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/, '').length
word_count = text.split.length
paragraph_count = text.split(/\n\n/).length
sentence_count = text.split(/\.|\?|!/).length
stop_words = %w{the a by on for of are with just but and to the my I has some}
words = text.scan(/\w+/)
key_words = words.select { |word| !stop_words.include?(word) }

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|\!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }

puts linees.size
puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count} sentences"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts key_words.join(' ')
puts "% of non-fluffy words:\n\n" + ((key_words.length.to_f / words.length.to_f) * 100).to_i.to_s
puts "summary:\n\n" + ideal_sentences.join(". ")
puts "--- End of analysis"