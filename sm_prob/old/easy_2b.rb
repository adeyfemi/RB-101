# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_f

# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_f

# square_meters = (length * width).round(2)
# square_feet = (10.7639.to_f * square_meters).round(2)

# puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."

# #alternative solution
# SQMETERS_TO_SQFEET = 10.7639

# puts '==> Enter the length of the room in meters: '
# length = gets.to_f

# puts '==> Enter the width of the room in meters: '
# width = gets.to_f

# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

# puts "The area of the room is #{square_meters} " + \
#      "square meters (#{square_feet} square feet)."


#Further Exploration
SQFEET_TO_SQMETERS = 1 / 10.7639
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.0304

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

square_feet = (length * width).round(2)
square_meters = (SQFEET_TO_SQMETERS * square_feet).round(2)
square_inches = (SQFEET_TO_SQINCHES * square_feet).round(2)
square_centimeters = (SQFEET_TO_SQCENTIMETERS * square_feet).round(2) 

puts "The area of the room is #{square_feet} square feet (#{square_meters} square meters)."
puts "The area of the room is #{square_feet} square feet (#{square_inches} square inches)."
puts "The area of the room is #{square_feet} square feet (#{square_centimeters} square centimeters)."

