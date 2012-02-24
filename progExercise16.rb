#
#Exercise16. Select all correct ways to do an ascending sort by string length.
#
a = ["Magazine", "Sunday", "Jump"]
#Answers:
puts a.sort
#puts a.sort { |s| s }
#puts a.sort { |l, r| l <=> r }
#puts a.sort { |l, r| l.length <=> r.length }
#puts a.sort_by { |s| s }
puts a.sort_by { |s| s.length }
#

