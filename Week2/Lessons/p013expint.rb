#
#
#
def say_goodnight(name)
  result = "Good Night #{name}"
  return result
end
puts say_goodnight('Eduardo')

def say_goodnight2(name)
  "Good Night, #{name}"
end
puts say_goodnight2('Aline')

#It is to be noted that every time a string literal is used in an assignment or as a parameter, a new String object is created
