#Enunciado
#Exercise2. Read the sprintf documentation and the % documentation in the String class and figure out the output being printed by of this Ruby code.
#
#puts "%05d" % 123



#Ver documentacao do método % da Classe String
puts "%05d" % 123

#ou

#Ver documentacao de sprintf do Kernel
puts sprintf("%05d",123)

# % = é um método de instância do Objeto String que recebe como arguemntos a formatacao que sera aplicada
#
# O resultado da aplicação da formatação é uma String, já que somente altera a representacao de um numero, ou seja, quando formatamos um número, ele não é mais um número, embora pareça. Este número foi formatado como String para seguir um padrão ou uma regra que nõs demos....
#
#

#Para terminar o método format() do Kernel é apenas um alias para sprintf
#
#Em relação a qual método usar, %, sprintf ou format, é uma questão especial, tendo uma caida maior para utilizar o %
#
#
