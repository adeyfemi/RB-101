def meal
  return 'Breakfast'
end

puts meal

#every method returns the evaluated result or return value, of the last line that is executed
#code will return the string with or without the 'return' on line 2 because line 2
# is the last (and only) line executed in the 'meal' method

#ex2
def meal
  'Evening'
end

puts meal

#ex3

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

#return exits the method, so last line 'dinner' does not get executed

#ex4
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# 'puts' printed value and the return value are not the same
# return value of puts is nil

#ex5
def meal
  'Dinner'
  puts 'Dinner'
end

p meal

#ex6
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

#immediately exits the method once return value is initiated.




