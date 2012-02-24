#p029dog.rb
#define class dog
#

class Dog
  def initialize(breed,name)
    #Instance Variables
    @breed = breed
    @name = name
  end

  def bark
    puts 'Ruff! Ruff!'
  end

  def display
    puts "I am of #{@breed} breed and my name is #{@name}"
  end
end

#Make a object - Constructing phase
d = Dog.new('Labrador', 'Benzy')

=begin
  Every object is "born" with certain innate abilities.  
  To see a list of innate methods, you can call the methods  
  method (and throw in a sort operation, to make it  
  easier to browse visually). Remove the comment and execute. 
=end
#puts d.methods.sort


#Amongst these many methods, the method object_id and respond_to? are important.
#Every object in Ruby has a unique id number associated with it
puts "The id of d is #{d.object_id}"

#to know whether the object knows how to handle the message you want to send it, by using respond_to? method.
if d.respond_to?("talk")
  d.talk
else
  puts "Sorry, d doesn't understand the 'talk' message"
end

d.bark
d.display

#making d and d1 point to the same object
d1 = d
d1.display

#making d a nil reference, meaning it does not refer to anything
d = nil
d.display

#if i now say
#d1 = nil
#Then the Dog object is abandoned and eligible for Garbage Collection(GC)
#
puts d1.methods.sort

puts "O object_id of d1 is: #{d1.object_id}"

puts "A classe do objeto e: #{d1.class.to_s}"

puts "d1 e uma instancia da classe Dog: #{d1.instance_of? Dog}"
