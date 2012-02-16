#
#Exercise1. Why is the output of this program:
#
#def method
# a = 50
#  puts a
#  end
#  a = 10
#  method
#  puts a
#  as shown below:
#
#  50
#  10
#
#R: The scope of a local variable is within a block. Here its 'def method'.
#The var a outside the block is different from var a within the block.
