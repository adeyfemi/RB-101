#How big is the room?

SQMETERS_TO_SQFEET = 10.7639
SQMETERS_TO_SQINCHES = 1550.003
SQMETERS_TO_SQCENT = 10000

puts "==> What is the length in meters?"
length = gets.chomp.to_f

puts "==> What is the width in meters?"
width = gets.chomp.to_f

square_meters = length * width
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)
square_inches = (square_meters * SQMETERS_TO_SQINCHES).round(2)
square_centimeters = (square_meters * SQMETERS_TO_SQCENT).round(2)


puts "==> The area of the room is #{square_meters} square meters (#{square_feet} square feet)."
puts "==> The area of the room is #{square_meters} square meters (#{square_inches} square inches)."
puts "==> The area of the room is #{square_meters} square meters (#{square_centimeters} square centimeters)."

#Further Exploration

SQFT_TO_SQMETERS = 1 / 10.7639
SQFT_TO_SQINCHES = 144
SQFT_TO_SQCENT = 929.0304

puts "==> What is the length in feet?"
length = gets.chomp.to_f

puts "==> What is the width in feet?"
width = gets.chomp.to_f

square_feet = length * width
square_meters = (square_feet * SQFT_TO_SQCENT).round(2)
square_inches = (square_feet * SQFT_TO_SQINCHES).round(2)
square_centimeters = (square_feet * SQFT_TO_SQCENT).round(2)

puts "==> The area of the room is #{square_feet} square feet (#{square_meters} square feet)."
puts "==> The area of the room is #{square_feet} square feet (#{square_inches} square inches)."
puts "==> The area of the room is #{square_feet} square feet (#{square_centimeters} square centimeters)."
