
#Exercise 1
#Exercise1. Write a class called Dog, that has name as an instance variable and the following methods:
#
#bark(), eat(), chase_cat()
#I shall create the Dog object as follows:
#d = Dog.new('Leo')
#
class Dog

  def initialize(name)    
  end

  def bark
    'Wolf Wolf'
  end

  def eat(food)
    @food = food
    "nhac nhac #{@food}"
  end

  def chase_cat
    'Urrrghhh Wolf Wolf Urrghhhh'
  end
end

d = Dog.new('Leo')
puts d.bark
puts d.eat 'meat'
puts d.chase_cat
