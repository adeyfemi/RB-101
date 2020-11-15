#Countdown

#original code
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'

#revision
def decrease(counter)
  counter - 1
end

counter = 10

counter.times do #refactored to remove the redundant 10
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

#key points:
# counter variable initialized on line 8 and counter parameter of the decrease method
# are two independent variables. Most important the method variable lives within the scope
#to correct, reassign the variable counter on line 9 on the return value of decrease(counter)
# each time we iterate through the block. 