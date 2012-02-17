#
#Exercise3. Make use of the class Dir for the following -
#
#Display your current working directory.
#Create a new directory tmp under your working directory.
#Change your working directory to tmp
#Display your current working directory.
#Go back to your original directory.
#Delete the tmp directory.
#

puts Dir.pwd
puts Dir.mkdir("tmp")
puts Dir.chdir("tmp")
puts Dir.pwd
puts Dir.chdir("..")
puts Dir.pwd
puts Dir.delete("tmp")
