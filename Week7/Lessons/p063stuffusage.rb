require_relative 'p062stuff' #loads Stuff module from Stuff.rb
                             #$: is a system variable - contains the path for loads

class D
  include Stuff #refers to the loaded module
  puts Stuff.m(4)
end

class E < D
  puts Stuff.m(10)
end

d = D.new

puts d.p(5)
puts $:
$: << "/tmp"
puts $:
puts Stuff.m(5)



