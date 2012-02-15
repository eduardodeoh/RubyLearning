
def leap_year?(year)
      year % 100 == 0 ? (year % 400 == 0) : (year % 4 == 0)
end

years = [2000,2004,1900,2005]

years.each do |idx|
  minutes = ( leap_year?(idx) ? 366 : 365)  * 24 * 60
  puts "Year #{idx} has #{minutes} minutes"
end
