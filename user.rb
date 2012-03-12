require 'pry'

class User
  attr_accessor :name, :email

  def initialize(attrs = {})
    attrs.each { |name, value| __send__("#{name}=",value) }
    binding.pry
  end
end

user = User.new(name: "Joao", email: "joao@xxx.com")
