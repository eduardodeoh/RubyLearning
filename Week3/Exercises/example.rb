# By Mischa Fierer
# http://www.themomorohoax.com

class Example
	def denote; puts "#{("~" * 80)}\n\n"; yield; puts "#{("~" * 80)}\n\n" end

	@@correct = 0
	@@total = 0
	
	def self.stats
		"#{@@correct} / #{@@total} (#{percent}"
	end

	def self.percent
		(@@correct * 1.0) / @@total
	end

	def initialize(name, &block)
		denote do
			puts name + "\n\n"
			@expression = yield.to_s
			guess_please
		end
	end

	def guess_please
		puts @expression
		puts("\nGuess:")

		begin
		puts(eval(gets.chomp) == eval(@expression) ? correct : wrong)
		rescue SyntaxError => e
			puts e
		ensure
			@@total += 1
		end

		puts("\n\nPress any key for next example")
		gets
	end

	def correct
	  @@correct += 1
		"Correct. Magic! ~" 
	end

	def wrong
		"Wrong. Oops!"
	end

end


