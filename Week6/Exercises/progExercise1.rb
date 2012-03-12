#
#Exercise1. Write a class called Person that has balance as an instance variable and make it readable via an accessor.

class Person
  attr_reader :balance
  
  def initialize(balance)
    @balance = balance  
  end
end

balance = Person.new("Balanca")
puts balance.balance
