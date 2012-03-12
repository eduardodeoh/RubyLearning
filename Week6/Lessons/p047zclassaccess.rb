class Person
  def initialize(age)
    @age = age
  end

  def age
    @age
  end

  def compare_age(c)
    if c.age > age
      'The other objects age is bigger'
    else
      'The other objects age is the same or smaller'
    end
  end
  protected :age
end

cris = Person.new(25)
marcos = Person.new(34)
puts cris.compare_age(marcos)
#puts cris.age

