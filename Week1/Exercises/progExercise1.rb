#Enunciado
#
#Exercise1. Before executing the code given below, guess the results. Next, execute the code. Did you get it right? If you did not get it right, can you think of why?
#
#Discuss your first guess and what you got when running the code.
#Goal: Understanding operator precedence and association.
#
#y = false
#z = true
#x = y or z
#puts x
#(x = y) or z
#puts x
#x = (y or z)
#puts x


y = false
z = true
x = y or z

puts x

(x = y) or z

puts x

x = (y or z)

puts x

x = y || z

puts x

#Lembrar que o o operador "=" tem precedencia maior que o operador "or" de composicao logica
#mas tem priodade menor que o operador "||" como operador lógico
#
#A principal diferença entre &&,|| e ! é que eles são significanes para expressoes lógicas, utiizados como operadores lógicos
# and, or e not são utilizados para controle de fluxo e por isso possuem precencia menor
# Esta parte foi emprestada do Perl
#
