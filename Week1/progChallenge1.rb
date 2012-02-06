#
#Using what we have learned so far: I wonder if anyone could have a crack at working out the age in years and months form. For example “I’m 32 years and 6 months old.”
#Use the following values for age_in_seconds:
#
#979000000
#2158493738
#246144023
#1270166272
#1025600095
#

SECONDS_PER_MONTH = 2629743.83 

age = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

def convert_seconds_to_years_and_months(age_seconds)
  years_and_months = age_seconds / SECONDS_PER_MONTH
  result = years_and_months.divmod(12)
end

age.each do |secs|
  test = convert_seconds_to_years_and_months(secs)
  puts "You are #{test.first.to_i} years and #{test.last.to_i} months old!"
end
  
