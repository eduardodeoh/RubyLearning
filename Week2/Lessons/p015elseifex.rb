#elseif example
#

puts "Hello, what's your name?"
STDOUT.flush
name = gets.chomp
puts "Hello, #{name} ."

#Original
if name == 'Eduardo'
  puts "Have a nice day #{name}"
else
  if name == 'Aline'
    puts "Have a nice night #{name}"
  end
end

#Modified with elseif
if name == 'Eduardo'
  puts "Have a nice day #{name}"
elsif name == 'Aline'
  puts "Have a nice night #{name}"
end

#Other modification
# || is the logical or operator
if name == 'Eduardo' || name == 'Aline'
  puts 'Owwwww........'
end

#Conditional Operators
#== != >= <= > <
#
#unless
#unless, as a statement or a modifier, is the opposite of if: it executes code only if an associated expression evaluates to false or nil. Ruby's unless construct begins with unless and ends with end. The body is the text between the two
#
unless name == 'Eduardo' or name == 'Aline'
unless name == 'Eduardo' || name == 'Aline'
  puts "Use name Eduardo or Aline"
end

#In the above program, the body is executed unless the number of elements in the array is equal to 2 (meaning that both arguments were given). The method Kernel.exit terminates your program, returning a status value to the operating system.
#
#http://ruby-doc.org/docs/keywords/1.9/Object.html
#http://rafaeldx7.github.com/2010/03/25/ruby--if-e-unless-fluentes.html

