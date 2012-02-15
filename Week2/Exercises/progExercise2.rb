#
#Exercise2. Run the following two programs and try and understand the difference in the outputs of the two programs. The program:
#
#def mtdarry
# 10.times do |num|
#  puts num
#   end
#   end
#
#   mtdarry
#
#   and the program:
#
#   def mtdarry
#    10.times do |num|
#     puts num
#      end
#      end
#       puts mtdarry
#
#
def mtdarry
   10.times do |num|
   puts num
   end
end

mtdarry

puts "-----------------------"

def mtdarry
   10.times do |num|
   puts num
   end
end
puts mtdarry

#R: A method returns the value of the last statement. In mtdarry the value of 10.each is 10, so 'puts mtdarry' puts the string "10" (with an implicit .to_s)
