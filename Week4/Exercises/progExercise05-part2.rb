#
#
file1= File.open(ARGV[0], 'r')
file2 = File.open(ARGV[1], 'r')
begin
  lines_file1 = file1.gets
  lines_file2 = file2.gets
  #if lines_file1.eql?(lines_file2) then         
    puts "#{lines_file2}"
  #end
end while not (lines_file1.nil? || lines_file2.nil?)
