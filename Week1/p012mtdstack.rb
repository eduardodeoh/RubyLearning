#Sequencia na qual os parametros sao colocados na pilha (stack)
#

def mtd(a=99, b=a+1)
  [a,b]
end

puts mtd


#Passagem de parametros por valor e por referencia
#

#Por valor
def downer1(string)
  string.downcase
end

a = "EDUARDO"
puts downer1(a) # -> "hello"
puts a    # -> "HELLO"


#Por referencia
def downer2(string)
  string.downcase!
end

a = "ALINE"
puts downer2(a)   # -> "hello"
puts a      # -> "hello"


