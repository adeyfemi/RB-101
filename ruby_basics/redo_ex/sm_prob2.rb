#How old is Teddy?

#input: random integer
#output: string statement

#rules:
# => build a program that randomly generates and prints Teddy's age
# generate a random number between 20 and 200

your_name = gets.chomp
if your_name.empty?
  your_name = 'Teddy'
else
  your_name
end

age = rand(20.200)
puts "#{your_name} is #{age} years old!"

#How big is the room?

#input: integer
#output: string with integers

#rules:
# => a program that asks for length and width of a room in meters 
# => displays area of the room in both square meters and square feet

SQUARE_METERS_TO_FEET = 10.7639

puts "==> Enter the length of the room in meters:"
length = gets.to_f

puts "==> Enter the width of the room in meters:"
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQUARE_METERS_TO_FEET).round(2)

puts "The area of the room is #{square_meters} " + \
 "square meters(#{square_feet} square feet)."

 #Tip calculator

#input: integer
#output: integer with dollar sign and decimal

puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip = gets.to_f

tip_percentage = tip / 100
dollar_tip = (bill * tip_percentage).round(2)
total = (bill + dollar_tip).round(2)

puts "The tip is $#{dollar_tip}"
puts "The total is #{total}"

puts "The tip is $#{format("%.2f", tip_amount)}"
puts "The total is $#{format("%.2f", total)}"

#When will I Retire?

# => a program that displays when user will retire
# => how many years she has to work till retirement
CURRENT_YEAR = 2020

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

retirement_year = CURRENT_YEAR + (retirement_age - age)
work_years_remaining = retirement_age - age

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You have only #{work_years_remaining} years of work to go!"

current_year = Time.now.year # provides the current year

#Greeting a user

#rules
# => ask for user's name and tehn greet user
# => if the user writes "name!" then computer years back (upcase)

puts "What is your name?"
your_name = gets.chomp

if your_name.include?('!')
  puts "Hello #{your_name}. why are we screaming?".upcase
else
  puts "Hello #{your_name}."
end

#Odd Numbers and Even Numbers

(1..99).each {|num| puts num if num.odd? }
puts (1..99).select {|num| num.odd? }

(1..99).each {|num| puts num if num.even? }

#Sum or Product of Consecutive Integers

puts ">> Please enter an integer greater than 0:"
input = gets.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase

sum = (1..input).reduce(:+)
product = (1..input).reduce(:*)

if operation.include?('s')
  puts "The sum of the integers between 1 and #{input} is #{sum}."
elsif operation.include?('p')
  puts "The product of the integers between 1 and #{input} is #{product}."
end

# => better process is to create a method since it is repetitive for the sum/product


