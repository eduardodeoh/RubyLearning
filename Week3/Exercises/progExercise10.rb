#Exercise10. Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5] calculates the sum of its elements.
#

def sum_array(ary)
  sum = 0
  ary.each do |x|
    sum += x
  end
  sum
end

ary_example = [1, 2, 3, 4, 5]

puts sum_array(ary_example)


puts ary_example.inject(:+)


#Pattern Fold
#http://en.wikipedia.org/wiki/Fold_(higher-order_function)
#http://www.potstuck.com/2011/07/25/map-if-in-ruby-and-an-introduction-to-rubys-inject/
#
