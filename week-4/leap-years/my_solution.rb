# Leap Years

# I worked on this challenge [with: Jay Yee].


# Your Solution Below

def leap_year? (year)
  if year % 100 == 0 && year % 400 != 0
    return false
  elsif year % 4 == 0 || year % 400 == 0
    return true
  else
    return false
  end
end


#If the year can be evenly divided by 100, it is NOT a leap year, unless; The year is also evenly divisible by 400. Then it is a leap year. This means that 2000 and 2400 are leap years, while 1800, 1900, 2100, 2200, 2300 and 2500 are NOT leap years.
