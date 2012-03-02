require_relative 'animal'

class Dog < Animal
  def initialize(breed, name)
    @breed = breed
    @name = name
  end
  
  def bark
    "Class Dog's display method: Ruff ! Ruff!!"
  end

  #override display method
  def display
    "Class Dog's display method: I am of #{@breed} breed and my name is #{@name}"
  end
end

