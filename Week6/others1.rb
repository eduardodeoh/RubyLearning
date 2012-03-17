require 'pp'

class Person

  def initialize(name, sex)

    @name = name

    @sex = sex

  end

end

p1 = Person.new("Peter", "M")

p2 = Person.new("Anita", "F")


people = [p1, p2, p1, p2, p1] 

pp people

puts people
