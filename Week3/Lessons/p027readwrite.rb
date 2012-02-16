#
## p027readwrite.rb  
## Open and read from a text file  
## Note that since a block is given, file will  
## automatically be closed when the block terminates
#
File.open('../../Week1/Lessons/p004stringusage.rb', 'r') do |f1|
  while line = f1.gets
    puts line
  end
end

File.open('testfile.rb', 'w') do |f2|
  f2.puts "Criado por Eduardo\n thanks"
end

require 'find'
Find.find('./') do |f|
  type = case
         when File.file?(f) then "F"
         when File.directory?(f) then "D"
         else "?"
         end
  puts "#{type}: #{f}"
end

