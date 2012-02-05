#
#
#printf
#
#Another output method we use a lot is printf, which prints its arguments under the control of a format string (just like printf in C or Perl).
#
#printf("Number: %5.2f,\nString: %s\n", 7.18, "FORPC101")
#
#The output is:
#
#Number:  7.18,
#String: FORPC101
#
#In this example, the format string "Number: %5.2f,\nString: %s\n" tells printf to substitute in a floating-point number (allowing five characters in total, with two after the decimal point) and a string. Notice the newlines (\n) embedded in the string; each moves the output onto the next line
#

printf("Number: %5.3f,\nString: %s\n", 7.182, "Eduardo Hernandes")



#step
#
#Class Numeric also provides the more general method step, which is
#more like a traditional for loop.
#
#8.step(40, 5) {|i| print i, " " }
#
#This produces an output as:
#
#>ruby tmp2.rb
#
#8 13 18 23 28 33 38 >Exit code: 0 
#

2.step(100,2) {|i| print i, " "}

#
#exit( true | false | status=1 )
#
#The method exit terminates your program, returning a status value to the operating system. The optional parameter is used to return a status code to the invoking environment. With an argument of true, exits with a status of zero. With an argument that is false (or no argument), exits with a status of 1, otherwise exits with the given status.
#
#For example:
#
#exit 99
#
#will exit with a status of 99.
#exit 50
#
#local_variables returns the names of the current local variables in a particular context. It is a reflective method and can be placed anywhere in the program ie. even on line 1. In the example:
#
#a = 10
#
#def mtd
#
# b = 20
#
# end
#
# puts local_variables
#
# The output is:
#
# >ruby tmp2.rb
#
# a
#
# >Exit code: 0

a = 10

def mtd
  b = 20
  puts local_variables
end

puts local_variables

mtd
