
#Exercise 1
#Exercise1. Write a class called Dog, that has name as an instance variable and the following methods:
#
#bark(), eat(), chase_cat()
#I shall create the Dog object as follows:
#d = Dog.new('Leo')
#
class Dog

  def initialize(name)    
    @name = name
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

  def teach_trick(name, &block)
    define_singleton_method(name, &block)
  end

  def method_missing(name)
    "#{@name} does not know how to #{name}"
  end

end

#d = Dog.new('Leo')
#puts d.bark
#puts d.eat 'meat'
#puts d.chase_cat
#
d = Dog.new('Lassie')
d.teach_trick(:dance) { "#{@name} is dancing!" }
puts d.dance
d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
puts d.poo
puts "#{d.name} respond_to?(:dance) = #{d.respond_to?(:dance)}"
puts "#{d.name} respond_to?(:poo) = #{d.respond_to?(:poo)}"
puts

d2=Dog.new('Fido')
puts d2.dance
d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
puts d2.laugh
puts d.laugh
puts

d3=Dog.new('Stimpy')
puts d3.dance
puts d3.laugh
puts

#Info about singleton class and singleton method
#http://en.wikipedia.org/wiki/Singleton_pattern
#http://senthilnambi.posterous.com/definemethod-vs-definesingletonmethod
#http://www.rubyist.net/~slagell/ruby/singletonmethods.html
#http://www.devalot.com/articles/2008/09/ruby-singleton

#Info about method_missing and respond_to?
#http://theezpzway.com/2010/2/21/dont-forget-about-respond-to-when-implementing-method-missing
#http://www.codosaur.us/2011/12/ruby-geekery-defining-methodmissing-and.html
#http://devblog.avdi.org/2011/12/07/defining-method_missing-and-respond_to-at-the-same-time/
#http://technicalpickles.com/posts/using-method_missing-and-respond_to-to-create-dynamic-methods/
