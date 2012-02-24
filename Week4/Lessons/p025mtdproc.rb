#
=begin  
  You cannot pass methods into other methods (but you can pass procs into methods),  
  and methods cannot return other methods (but they can return procs)  
=end  

def some_mtd some_proc
  puts 'Start of method'
  #some_proc.call
  some_proc.call
  puts 'End of method'
end

def any_mtd
  puts 'Hello 2'
end

say = lambda do
  puts 'Hello'
end

some_mtd say
#some_mtd any_mtd


a_block = lambda { |x| "Hello #{x}!" }

puts a_block.call 'World'

#http://rubylearning.com/blog/2007/11/30/akitaonrails-on-anatomy-of-ruby-blocksclosures/
