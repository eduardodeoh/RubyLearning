i#
#Exercise2. This exercise thanks to Kathy Sierra. Once upon a time in a software shop, two programmers were given the same spec and told to "build it". The Really Annoying Project Manager forced the two coders to compete, by promising that whoever delivers first gets one of those cool Aeron chairs all the Silicon Valley guys have.
#
#The spec. There will be shapes on a GUI, a square, a circle and a triangle. When the user clicks on a shape, the shape will rotate clockwise 360 degrees (ie. all the way around) and play an AIF sound file specific to that particular shape. Go for it guys and show me your code.
#
#Note: This exercise is about inheritance, method overriding and method overloading not about UI.



class Shape
  attr_accessor :name, :position_x, :position_y
  def initialize(*args)
    @args = args
  end
end

class Square < Shape
  def initialize(*args)
    super
    if @args.size == 2
      @side_a = @args[0]
      @side_b = @args[1]
    end
  end
  def area
    @side_a * @side_b
  end
  def perimeter
    2 * (@side_a + @side_b)
  end
end

class Circle < Shape
  def initialize(*args)
    super
    if @args.size == 1
      @radius = @args[0]
    end
  end
  def area
  end
  def perimeter
  end
end

class Triangle < Shape
  def initialize(*args)
    super
    if @args.size == 3
      @side_a = @args[0]
      @side_b = @args[1]
      @side_c = @args[3]
    end
  end
  def area
  end
  def perimeter
  end
end

square = Square.new(5,5)

puts square.name = "Square1"
puts square.position_x = 0
puts square.position_y = 0

puts square.area
puts square.perimeter
