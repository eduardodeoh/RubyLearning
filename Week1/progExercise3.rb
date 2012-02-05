#Enunciado
#
#Exercise3. Write a Ruby program that displays how old I am, in years, if I am 979000000 seconds old.Display the result as a floating point (decimal) number to two decimal places (for example, 17.23).
#Note: To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57


#Solucao simples
#Para nao perder precisao na divisao de inteiros, transformar um numero em ponto flutuante
#age_seconds = 979000000.to_f
#age_years = age_seconds / 3600 / 24 / 365
#puts "%.2f" %age_years
#
#or
#secs = 979000000.to_f
#mins = secs/60
#hours = mins/60
#days = hours/24
#years = days/365
#format("%.2f", years)
#puts "%.2f" % years

#Solucao melhorada

def years_to_seconds(age)
  age = (age.to_i * 365 * 24 * 60 * 60)
end

puts "Enter your age: "
STDOUT.flush
res = gets.chomp

#puts "Your age in seconds =  %.2f" % years_to_seconds(res) + " seconds"
#Como dica dos instrutores, para criar menos strings.....
puts "Your age in seconds =  %.2f" % years_to_seconds(res)
