#Interpolacao refere-se ao processo de inserir o resultado
#de uma expressao dentro uma string literal
#o operador de interpolacao #{...}

def mtd(arg1="Eduardo", arg2="Oliveira", arg3="Hernandes")
  "#{arg1}, #{arg2}, #{arg3}"
end

puts mtd
puts mtd("Aline")
puts mtd "Aline","Camora"

puts "100 * 5 = #{100 * 5}"

