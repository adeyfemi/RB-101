def leap_year?(year)  
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end

#alternative
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end


puts leap_year?(2016) == true
puts leap_year?(2015) == false

#the order in which you perform tests for a leap year calculation is important. For what years will leap_year? fail if you rewrite it as
def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

def leap_year?(year)
  if year % 4 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 400 == 0
  end
end
