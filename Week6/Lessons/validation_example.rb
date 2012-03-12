class Name
  attr_reader :first, :last

  def first=(first)
    if first == nil or first.size == 0 
      raise ArgumentError, 'Everyone must have a first name'
    end
    #first = first.dup
    first[0] = first[0].chr.capitalize
    @first = first
  end

  def last=(last)
    if last == nil or last.size == 0
      raise ArgumentError, 'Everyone must have a last name'
    end
    @last = last
  end

  def full_name
    "#{@first} #{@last}"
  end

  def initialize(first, last)
    self.first = first
    self.last = last
  end
end


eduardo = Name.new('Eduardo', 'Hernandes')
puts eduardo.first
puts eduardo.last
puts eduardo.full_name

aline = Name.new('Aline', 'Camora')
puts aline.full_name
puts aline.first
aline.first = nil

Name.new("Vidal", nil)
