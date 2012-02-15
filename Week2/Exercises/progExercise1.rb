#Exercise1. Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time, using all that we have learned so far. The expected output is:
#
#>ruby tmp.rb
#Line 1: Welcome to the forum.
#Line 2: Here you can learn Ruby.
#Line 3: Along with other members.
#>Exit code: 0
#

INPUT = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\nAlong with other members."

#puts INPUT.split('\n')
#INPUT.each_line('\n').with_index {|s| p s}
#INPUT.each_line {|s| puts s}
#Soluton 1
INPUT.each_line.with_index do |a,b; x,y|
  x = a
  y = b
  puts "Line #{y+1}: #{x}"
end

#Solution 2
INPUT.each_line.with_index(1) {|line,index| puts "Line #{index}:#{line}"}

#Solutin 3
count = 1
INPUT.each_line do |line|
  puts "Line#{count}:#{line}"
  count += 1
end
