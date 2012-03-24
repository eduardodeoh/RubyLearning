module Stuff
  C = 10
  def Stuff.m(x) #prefix with the module name for a class method
    C*x
  end
  def p(x) #an instance method, mixin for other classes
    C+x
  end
  class T
    @t = 2
  end
end

puts Stuff::C #Stuff namespace
puts Stuff.m(3) #like a class method
x = Stuff::T.new
puts x


