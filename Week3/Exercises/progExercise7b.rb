file_data = []
lines_in_file = 0
 
 
f = File.open('text.txt')
f.each {|line| (lines_in_file = f.lineno) && file_data << line }
file_string = file_data.join
words = file_string.split(' ').size
sentences = file_string.split(/[!?.]/).size
paragraphs = file_string.split("\n\n").size
 
results = <<INFO
Characters: #{file_string.size} 
Characters - spaces: #{file_string.gsub(/\s+/, '').size} 
Words: #{words} 
Sentences: #{sentences} 
Paragraphs: #{paragraphs} 
#{words / sentences} words per sentence on average
#{sentences / paragraphs} sentences per paragraph on average
INFO
# 
puts results
