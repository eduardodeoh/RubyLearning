#
#Exercise8. Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz". Discuss this in the FizzBuzz Forum.
#i

def fizzbuzz(startrange,endrange)
  interval = startrange.to_i..endrange.to_i
  interval.each do |x|
  puts case 
    when x % 3 == 0 && x % 5 == 0 then
      'FizzBuzz'
    when x % 3 == 0 then
      'Fizz'
    when x % 5 == 0 then
      'Buzz'
    else
      "x"
    end
  end
end

fizzbuzz(ARGV[0],ARGV[1])

