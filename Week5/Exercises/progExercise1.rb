#
#Exercise1. Write a class UnpredictableString which is a sub-class of String. This sub-class should have a method called scramble() which randomly rearranges any string as follows:
#
#>ruby unpredictablestring.rb
#daano.r n sdt a htIsw taikmgy r
#>Exit code: 0
## the original string was: "It was a dark and stormy night."
#

class UnpredictableString < String
  def scramble(str)
    str.split(//).shuffle(random: Random.new(Time.now.to_i)).join
  end
end

text = "It was a dark and stormy night."

new_text = UnpredictableString.new
puts new_text.scramble(text)
puts text


