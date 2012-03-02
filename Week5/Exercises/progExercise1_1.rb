class UnpredictableString < String
  def initialize(str)
    @str = super(str)
  end
  def scramble
   @str.scan(/./).shuffle(random: Random.new(Time.now.to_i)).join
  end
end

text = "It was a dark and stormy night."

new_text = UnpredictableString.new(text)

puts new_text.scramble
puts text

