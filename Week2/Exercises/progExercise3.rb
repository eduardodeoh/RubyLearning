#
#Exercise3. Write a method leap_year?. It should accept a year value from the user, check whether it's a leap year, and then return true or false. With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) and the number of minutes in a non-leap year (1900 and 2005). Note: Every year whose number is divisible by four without a remainder is a leap year, excepting the full centuries, which, to be leap years, must be divisible by 400 without a remainder. If not so divisible they are common years. 1900, therefore, is not a leap year.
#

class Fixnum

#def leap_year?(year)
#  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
#end


def leap_year?
  self % 4 == 0 && self % 100 != 0 || self % 400 == 0
end


#def minutes_in_year(year)
#  (leap_year?(year) ? 366 : 365) * 24 * 60
#end

def minutes_in_year
  (leap_year? ? 366 : 365) * 24 * 60
end

#puts minutes_in_year(2000)

years = [2000,2004,1900,2005]

years.each { |idx| puts "There are #{idx.minutes_in_year} minutes in year #{idx}" }

#
end

