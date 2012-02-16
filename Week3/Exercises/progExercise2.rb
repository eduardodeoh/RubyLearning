#
#Exercise2. Thanks to Marcos Souza for this exercise. A plain text file has the following contents:
#
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test word test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#Observe that in this file, there exists a word 'word'. Write a clever but readable Ruby program that updates this file and the final contents become like this:
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test inserted word test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#Do not hard-code the file name.
#


def replacefilecontent(file)
  newfile = File.new("fileresult.txt", 'w')
  File.open(file, 'r') do |file|
    while line = file.gets
      if line =~ /word/ then
        line.gsub!("word", "inserted word")
      end
      newfile << line
    end
  end
  newfile.close
end


unless ARGV[0].empty?
  replacefilecontent(ARGV[0])
else
  puts "Insert a filename"
end
