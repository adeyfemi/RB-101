#Leap Years(Part 1)
def leap_year?(year)
  (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)
end

def leap_year?(year)
  (year % 400).zero? || (year % 4).zero? && !(year % 100).zero?
end


# #alternative method
# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

# def leap_year?(year)
#   if year % 4 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 400 == 0
#   end
# end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(400)