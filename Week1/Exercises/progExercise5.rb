#The following program prints the value of the variable. Why?

my_string = 'Hello Ruby World'
def my_string
    'Hello World'
end
puts my_string

#Resposta:
#
#"Method calls can also be barewords, such as my_method. gets is a method call; so is system. Whenever Ruby sees a bareword, it interprets it as one of three things: (a) If there's an equal sign (=) to the right of the bareword, it's a local variable undergoing an assignment. (b) Ruby has an internal list of keywords and a bareword could be a keyword.(c) If the bareword is not (a) or (b) above, the bareword is assumed to be a method call. If no method by that name exists, Ruby raises a NameError."
#
#The tutorial also says that "In Ruby, program execution proceeds in general from top to bottom" and, "A variable springs into existence as soon as the interpreter sees an assignment to that variable."
#
#So I think that as Ruby executes the program it locks in 'my_string' as a variable in memory. Because the first thing Ruby checks when it hits a bareword is whether it's a variable, it stops there, never getting as far as executing the method. 
#
#
#Para chamar o método poderíamos utilizar as seguintes formas:
#
#1 - 
puts my_string()
#The parentheses suggest to puts that you're looking for a method, since variables don't take arguments?
#
#
#2 - 
puts method(:my_string).call
#Source: http://www.ruby-doc.org/core-1.9.3/Object.html#method-i-method

# 3 - 
puts send(:my_string)
#Source: http://ruby-doc.org/core-1.9.3/Object.html#method-i-send

#4 - 
puts self.my_string()
#Source: http://ruby-doc.org/docs/keywords/1.9/Object.html#method-i-self
