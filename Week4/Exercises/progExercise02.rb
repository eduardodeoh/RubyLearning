#Exercise2
#
#Write a Rectangle class. I shall use your class as follows:
#
#r = Rectangle.new(23.45, 34.67)
#puts "Area is = #{r.area}"
#puts "Perimeter is = #{r.perimeter}"
#

class Rectangle
  attr_reader :area, :perimeter

  def initialize(side_a,side_b)
    #@side_a = side_a
    #@side_b = side_b
    @area = (side_a * side_b).round(2)
    @perimeter = 2 * (side_a + side_b).round(2)
  end

  ##def area
    #(@side_a * @side_b).round(2)
    ##@area
  ##end

  ##def perimeter
    #2 * (@side_a + @side_b).round(2)
    ##@perimeter
  ##end
end

r = Rectangle.new(23.45,34.67)
puts "Area is #{r.area}"
puts "Perimeter is #{r.perimeter}"

#http://ruby-doc.org/docs/ProgrammingRuby/html/tut_classes.html
#http://ruby-br.org/tutoriais/?t=2&p=25
#http://www.rubyist.net/~slagell/ruby/accessors.html
#http://www.fincher.org/tips/Languages/Ruby/
