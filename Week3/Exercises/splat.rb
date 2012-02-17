# Splats.rb
#
# Source: github.com/mischa/splats



# Run with: $ ruby splats.rb
#
# If you want to be tested, predict the output.
# If you want to run through stuff, just hit enter.


require './example.rb'

puts "\n\n\n\n#{"Splats are weird.".center(40)}\n\t\tBy Mischa Fierer\n\n"


########################################################




# Behavior: David Black
Example.new("Simple assignment to an array") do
	'y = [1,2,3]; p y'
end

Example.new("Explode the array") do 
	'y = [1,2,3]; p *y'
end

Example.new("The unarrayed obj") do
	'*y = [1,2,3]; p y'
end

Example.new("Splats cancel each other out") do
	'*y = [1,2,3]; p *y'
end

Example.new("With a string") do
	'*y = "abc"; p *y'
end


Example.new("Array wrapped string") do
	'*y = "abc"; p y'
end

Example.new("With just a string") do
	'y = "abc"; p *y'
end

Example.new("Trying to get the 'bare list'") do
	'y = *[1,2,3]; p y'
end

Example.new("When there are enough levels to un-array the object comfortably...") do
	'y = *[[1,2,3]]; p y'
end

# Behavior: Rick DeNatale / matz

Example.new("Range inside parens inside array") do
	"p [*(1..4)]"
end

def a(*arg)
	p arg
end

puts %Q{

For the next two examples:

def a(*arg)
	p arg
end

	
}

Example.new("String with \\n") do
	'a("foo\nbar")'
end


Example.new("Range plus string") do
	'a(1..3, "foo\nbar")'
end

Example.new("String then range assignment with splat") do
	'*a = "foo\nbar", (1..3); p a'
end


# Behavior: Multiple splats in Ruby 1.9
Example.new("I wonder if this will work?") do
	"a, b, c = *[1, 2], 3; p a, b, c"
end


Example.new("Will this work?") do
	"a, b, c = 1, *[2, 3]; p a, b, c;"
end


Example.new("What about this?") do
	"a, b, c, d, e, f = *[1, 2], 3, *[4, 5]; p a,b,c,d,e,f"
end

# How does it work?
#
# Robert Klemme and minilith@gmail.com
Example.new("Using #to_ary only") do 
	%Q{

			obj = Object.new
			
			def obj.to_ary
				[:to_ary]
			end

			p *obj
	}	
end


Example.new("Using #to_a only") do
	%Q{

			obj = Object.new
			
			def obj.to_a
				[:to_a]
			end

			p *obj
	}	
end

Example.new("Using #to_a and #to_ary") do
	%Q{

			obj = Object.new
			
			def obj.to_a
				[:to_a]
			end

			def obj.to_ary
				[:to_ary]
			end

			p *obj
	}	
end

puts "Correct: #{Example.stats})"

########################################################

REFERENCES = %Q!

	David Black:

	I've always called this the "unary unarray" operator. 

	More:

	http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/109971 
	http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/214897
	http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/214957
	http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/214921 (matz)
	http://ruby.about.com/od/newinruby191/qt/MultipleSplats.htm (1.9 stuff)

!



