#
#Exercise5. Given a string s = 'key=value', create two strings s1 and s2 such that s1 contains key and s2 contains value. Hint: Use some of the String functions.
#

str = 'key=value'

puts str

str1 = str.split('=')[0]
puts str1
str2 = str.split('=')[1]
puts str2

st1, st2 = str.split('=',2)
puts st1
puts st2
