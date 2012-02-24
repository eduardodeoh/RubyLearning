#
#Exercise14 The next set of exercises are sample questions from the Important Ruby Association Certified Ruby Programmer examination. Thanks to Satoshi Asakawa for the Japanese to English translation.
#
#Select all answers which return true.
h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }
#Answers:
puts h.member?("Matz")
puts h.member?("Python")
puts h.include?("Guido")
puts h.include?("Ruby")
puts h.has_value?("Larry")
puts h.exists?("Perl")
#

#member? searches for a key. So Matz is false and Python is true.
#include? : see member?. So Guido is false and Ruby is true
#has_value? obviously not searching within keys, but values, therefore Larry is true
#There's no method exists? for hashes.
