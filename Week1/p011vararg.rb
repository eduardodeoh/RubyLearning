#Examplo com um numero variavel de argumentos para um metodo
#O asterisco atualmente pega todos os argumentos que voce envia para o meotodo
#e atribui-o para um array chamado "my_string" como mostrado abaixo
#
#O asterisco é chamado de argumento splat

def foo(*my_string)
  my_string.inspect
end

puts foo('hello','World','XXX')
puts foo()
