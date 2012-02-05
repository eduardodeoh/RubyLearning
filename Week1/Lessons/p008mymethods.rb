def hello
	'Hello'
end

#usar o metodo
puts hello

#Metodo com argumento 1
def hello1(name)
  'Hello ' + name
end
puts (hello1('Eduardo'))
puts hello1('Eduardo')
puts hello1 'Eduardo'

def hello2 name2
  'Hello ' + name2
end
puts hello2 'eduardo2'
