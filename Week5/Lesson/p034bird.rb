class Bird
  def preen
    puts "I ama cleaning my feathers"
  end

  def fly
    puts "I am flying"
  end
end

class Penguin < Bird
  def fly
    puts "Sorry, I would rather swim"
  end
end

p = Penguin.new
p.preen
p.fly
