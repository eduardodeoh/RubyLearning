#
#In: http://rubylearning.com/satishtalim/ruby_names.html
#
#Method names should begin with a lowercase letter (or an underscore). "?", "!" and "=" are the only weird characters allowed as method name suffixes
#
#ok, method name suffixes ? and ! were explained in: http://rubylearning.com/satishtalim/writing_own_ruby_methods.html
#
#and about method name suffix "=" ?
#
#

##
#class Attribute
#  attr_writer :answer
#    attr_reader :answer
#    end
#     
#     my_class = Attribute.new
#     my_class.answer = 42
#     puts my_class.answer
#      
#      #####
#      ## The same as above, written out by hand
#      #####
#       
#       class Attributes
#         def answer
#             @answer
#               end
#                
#                  def answer=( argument)
#                      @answer = argument
#                        end
#                        end
#                         
#                         my_class = Attributes.new
#                         my_class.answer = 'Still 42'
#                         puts my_class.answer
#
#= server para definir metodos setters
