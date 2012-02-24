#p064regexp.rb
#
string = "My Phone Number is (17) 8111-0682."

phone_rxp = /\((\d{2})\)\s+(\d{4})\-(\d{4})/

m = phone_rxp.match(string)

unless m
  puts "There was no match"
  exit
end

print "The Whole string we started with: "
puts m.string

print "The entire part of the string that matched: "
#puts m[0]
puts $~

puts "The three captures: "
3.times do |index|
  puts "Capture ##{index+1}: #{m.captures[index]}"
end

puts 'Here\'s another way to get at the first capture: '
print "Capture #1"
puts m[1]
