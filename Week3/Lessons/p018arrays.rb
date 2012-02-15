#p018arrays.rb
#Arrays
#

#Empty Arrays
var1 =[]

#Array index starts from 0
puts var1[0]

#an array holding a single number
var2 = [5]
puts var2[0]

#an array holding two strings
var3 = ['Hello', 'GoodBye']
puts var3[0]
puts var3[1]

flavour = 'mango'
#an array whose elements are poiting
#to a three objects - a float, a string and a array
var4 = [80.5, flavour, [true, false]]
puts var4[2]

#a trailing comma is ignored
name = ['Satish', 'Talim', 'Ruby', 'Java',]
puts name[0]
puts name[1]
puts name[2]
puts name[3]

#the next output is nil
#nil is ruby´s way of saying nothing
puts name[4]

#we can add more elements too
name[4] = 'Pune'
puts name[4]

#we can add anything
name[5] = 4.33
puts name[5]

#we can add an array to an array
name[6] = [1, 2, 3]
puts name[6]

#some methods on arrays
newarr = [45, 23, 1, 90]
puts newarr.sort
puts newarr.length
puts newarr.first
puts newarr.last

#
## method each (iterator) - extracts each element into loc 
## do end is a block of code 
## we shall talk about blocks soon here - 
## http://rubylearning.com/satishtalim/ruby_blocks_and_procs.html 
## variable loc refers to each item in the array as it goes through the loop 
locations = ['Catanduva', 'SJRP', 'Mirassol']

locations.each do |loc|
  puts "I love #{loc} !"
  puts 'Don\'t you?'
end

