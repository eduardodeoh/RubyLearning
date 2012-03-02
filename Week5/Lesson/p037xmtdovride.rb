class A
  def a
    puts 'In a Class A'
  end
end

class B < A
  def a
    puts 'In a class B'
  end
end

b = B.new
b.a

