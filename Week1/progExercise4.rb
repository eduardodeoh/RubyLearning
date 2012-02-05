#Exercise4. Write a Ruby program that tells you how many minutes there are in a year (do not bother right now about leap years etc.).


#Solucao melhorada
#
def years_to_minutes(years)
  #minutes = (years.to_i * 365 * 24 * 60)
  minutes = Integer(years) * 365 * 24 * 60
end

puts "Enter the amount of years to be transformed in minutes: "
STDOUT.flush
res = gets.chomp

puts "#{res} year(s) in minutes = #{years_to_minutes(res)} minutes"

#Comentarios
#A utilização do operador de interpolacao #{} no lugar to método .to_s é preferível porque este último gera vários objetos string temporarios que precisam ser coletados pelo "garbage colector"
#Interpolation refers to the process of inserting the result of an expression into a string literal. The way to interpolate within a string is to place the expression within #{ and } symbols
#
#to_i is a method of String Class
#
#http://ruby-doc.org/core-1.9.3/String.html#method-i-to_i
#
#
#Integer is a method of Kernel
#
#http://ruby-doc.org/core-1.9.3/Kernel.html#method-i-Integer
