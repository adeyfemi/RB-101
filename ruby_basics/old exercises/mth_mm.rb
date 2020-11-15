def car(make, model)
  puts "#{make} #{model}"
end

car('Toyota', 'Corolla')

#make sure you're allowing for the correct number of parameters
#if method invocation provides two arguments, then the method must bne able to accept two arguments
#when printing the string, use #puts from inside the method


def car(make, model)
  "#{make} #{model}"
end

puts car('Toyota', 'Corolla')
puts car('Honda', 'Accord')

# on line 5, invoke a method called car with two strings passed as arguments
# write the method car and define it so that it outputs the string containing the values of the two arguments
# define car method and define two parameters: make and model -- number of parameters matches the two arguments
# output the make and model in a sentence
# to output call puts on line 5, but want car method to print the string so place call to puts on line 2
# when invoked method on line 5, car method outputs make and model 