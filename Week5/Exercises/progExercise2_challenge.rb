#
#Exercise2. This exercise thanks to Kathy Sierra. Once upon a time in a software shop, two programmers were given the same spec and told to "build it". The Really Annoying Project Manager forced the two coders to compete, by promising that whoever delivers first gets one of those cool Aeron chairs all the Silicon Valley guys have.
#
#The spec. There will be shapes on a GUI, a square, a circle and a triangle. When the user clicks on a shape, the shape will rotate clockwise 360 degrees (ie. all the way around) and play an AIF sound file specific to that particular shape. Go for it guys and show me your code.
#
#Note: This exercise is about inheritance, method overriding and method overloading not about UI.



class Shape
  attr_accessor :side_a, :side_b, :side_c, :radius
  def initialize(extension = '.aif')
    @extension = extension
  end

  def rotate
    "Rotate Clockwiese 360 degrees"
  end

  def play_sound
    "Play #{self.class.to_s.downcase! + @extension}"
  end

  def click
    "Click in #{self.class.to_s} #{rotate}  #{play_sound}"
  end
end

class Square < Shape
  def initialize(side_a,side_b)
    super()
    @side_a, @side_b = side_a, side_b
  end
end

class Circle < Shape
  def initialize(radius)
    super()
    @radius = radius
  end
end

class Triangle < Shape
  def initialize(side_a,side_b,side_c)
    super()
    @side_a, @side_b, @side_c = side_a, side_b, side_c
  end
end

class Amoeba < Shape
  def initialize(*args)
    super('.hif')
    @sides = args
  end
end
    

square = Square.new(5,10)
puts square.click
puts square.side_a
puts square.side_b

amoeba = Amoeba.new(2,3,4,5,6,7,8)
puts amoeba.click

#Info
#http://onestepback.org/articles/poly/oo-ruby.html
#http://langref.org/ruby/oop
