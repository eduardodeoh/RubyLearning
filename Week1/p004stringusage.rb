#Definindo uma constante
PI = 3.1416
puts PI

#Definindo variavel local
myString = "I love my city, SJRP"
puts myString

=begin
	 Conversoes
	 .to_i, .to_f, .to_s
=end

var1 = 5;
var2 = '2'

puts var1 + var2.to_i

#Anexando/Adicionando uma string
a = 'hello '
a << 'Mundo.
	I love this World'
puts a

=begin  
  << marks the start of the string literal and  
  is followed by a delimiter of your choice.  
  The string literal then starts from the next  
  new line and finishes when the delimiter is  
  repeated again on a line on its own. This is known as  
  Here document syntax.  
=end  

b = <<END_STRING
This is the string
And a second line
END_STRING
puts b

puts $0
puts $S
puts $:

$global = "Var global"

puts $global
