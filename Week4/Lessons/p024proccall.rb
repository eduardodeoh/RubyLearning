#blocks are not objects
#they can be converted into objects of class Proc by calling lambda method of class Object
prc = lambda { puts 'Hello'}
#method call invokes the block
prc.call

#another example
toast = lambda do
  'Cheers'
end

puts toast.call

#Remember you cannot pass methods into other methods (but you can pass procs into methods), and methods cannot return other methods (but they can return procs).
