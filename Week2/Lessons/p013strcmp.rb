# encoding: utf-8

#
## p013strcmp.rb  
## String#eql?, tests two strings for identical content.  
## It returns the same result as ==  
## String#equal?, tests whether two strings are the same object
#

str1 = 'Eduardo'
str2 = 'Aline'
str3 = str1

if str1 == str2
  puts 'Both Strings have identical content'
else
  puts 'Both String do not have identical content'
end

if str1.eql?(str2)
  puts 'Both Stirngs have identical content'
else
  puts 'Both Strings do not have identical contents'
end

if str1.equal?(str2)
  puts 'Both Stirngs have identical content'
else
  puts 'Both Strings do not have identical contents'
end

if str1.equal?(str3)
  puts 'Both Stirngs have identical content'
else
  puts 'Both Strings do not have identical contents'
end

#Encodings
puts "Ela é demais..."

#http://zargony.com/2009/07/24/ruby-1-9-and-file-encodings
#http://blog.grayproductions.net/articles/ruby_19s_three_default_encodings
#http://yehudakatz.com/2010/05/17/encodings-unabridged/
#http://nuclearsquid.com/writings/ruby-1-9-encodings/
