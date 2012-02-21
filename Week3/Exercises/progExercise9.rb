#
#Exercise9. Given a string, write a program to reverse the word order (rather than character order). The String and Array classes provide methods which will be very helpful for solving this exercise.
#

def reverse_word(text)
  text.split.reverse.join(' ')
end

puts "Insert a little sentence: "
puts reverse_word(gets.chomp)

