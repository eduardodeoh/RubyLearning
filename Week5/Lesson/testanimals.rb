require_relative 'dog'
require_relative 'cat'

#create object and call methods

d = Dog.new('Labrador', 'Benzy')
c = Cat.new('Persian', 'Leo')

puts d.bark
puts d.display
puts "d object is of class: #{d.class.to_s}"

puts c.meow
puts c.display
puts "c object is of class #{c.class.to_s}"

#mark for GC
c = nil

#respond_to?
if d.respond_to?("eat")
  d.eat
else
  puts "Sorry, the object doesn't understando the 'eat' message"
end

#add method missing
class Dog < Animal
  def method_missing(m, *args)
    "Class Dog: There's no method called #{m} here -- please try again"
  end
end

#check method_missing
puts d.eat

#object_id
puts "The id of d object is #{d.object_id}"

#add eat method - Open Classes
class Dog < Animal
  def eat
    'Class Dog method eat: I love bones!'
  end
end

puts d.eat

puts d.run

class Dog < Animal
  def run
    'This method definition is override by the next'
  end
  def run
    "#{super} .But all Dogs run very fast"
  end
end

puts d.run

#List down all methods
puts d.methods.sort
