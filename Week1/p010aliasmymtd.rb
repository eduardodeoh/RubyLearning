#aliasing method
#quando um metodo é apeliadado, o novo nome refere-se a uma copia do corpo original do metodo

def oldmtd
  "old method"
end

alias newmtd oldmtd

def oldmtd
  "old method improved"
end

puts oldmtd
puts newmtd
