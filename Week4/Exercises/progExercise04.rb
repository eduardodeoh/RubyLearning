#
#Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the following. Take two text files say A and B. The program should swap the contents of A and B. That is after the program is executed, A should contain B's contents and B should contains A's contents.
#
a, b = ARGV
 
def file_open(file)
  contents = File.open(file, 'r').read
end
 
def save_file(file, var)
    save_file = File.open(file, 'w+') do |f|
          f.puts var
    end
end
 
first_file = file_open(a)
second_file = file_open(b)
 
save_file(a, second_file)
save_file(b, first_file)
