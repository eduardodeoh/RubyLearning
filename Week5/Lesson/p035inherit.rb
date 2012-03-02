class GF
  def initialize
    puts "In GF class"
  end
  def gfmethod
    puts "GF method call"
  end
end

class F < GF
  def initialize
    puts 'In F class'
  end
end

class S < F
  def initialize
    puts 'In S class'
  end
end

son = S.new
son.gfmethod
