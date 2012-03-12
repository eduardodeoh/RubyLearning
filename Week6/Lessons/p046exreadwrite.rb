#Open and read from a text file
#Note that since a block is given, file will automatically be closed when the block terminates

begin
  File.open('p014constructs.rb', 'r') do |f1|
    while line = f1.gets
      puts line
    end
  end

  File.open('test.rb', 'w') do |f2|
    f2.puts "Created by Satish\nThand God"
  end
rescue Exception => msg
  puts msg
end

