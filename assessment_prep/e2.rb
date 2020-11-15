#How old is Teddy?

#P - ask user for input and generate random integers using #rand method

age = rand(20..200)

def ask_name
  user_name = gets.chomp
  user_name.empty? ? "Teddy" : user_name
end

your_name = ask_name
your_age = age

puts "#{your_name} is #{your_age} years old!"

#How big is the room?

#P - ask user for input and calculate results based on fixed coversion rates

#rules:
# => no need to validate the input

SQ_METER = 10.7639 #square feet

def prompt(msg)
  puts "=> #{msg}"
end

prompt("Enter the length of the room in meters:")
length = gets.chomp.to_f

prompt("Enter the width of the room in meters:")
width = gets.chomp.to_f

total_sq_meters = length * width
total_sq_feet = total_sq_meters * SQ_METER

puts "The area of the room is #{total_sq_meters} square meters" +
" (#{format("%.02f", total_sq_feet)} square feet)."

#Tip calculator

#P - user input to calculate the tip and total amount

prompt("What is the bill?")
bill = gets.chomp.to_f

prompt("What is the tip percentage?")
tip_percentage = gets.chomp.to_f / 100

total_tip = bill * tip_percentage
total_amount = bill + total_tip

prompt("The tip is $#{total_tip}")
prompt("The total is $#{total_amount}")

#When will I Retire?

#P - ask for user input and retirement years and age

CURRENT_YEAR = Time.new.year

prompt("What is your age?")
age = gets.chomp.to_i

prompt("At what age would you like to retire?")
retirement_age = gets.chomp.to_i

retirement_year = CURRENT_YEAR + (retirement_age - age)
years_left_working = retirement_age - age

prompt("It's #{CURRENT_YEAR}. You will retire in #{retirement_year}.")
prompt("You have only #{years_left_working} of work to go!")

#Greeting a user

#P - ask for user prompt and include a conditional statement if it includes "!"

prompt("What is your name?")
answer = gets.chomp

if answer[-1] == "!"
  prompt("HELLO #{answer[0..-2].upcase}. WHY ARE WE SCREAMING?") 
else
  prompt("Hello #{answer}.")
end

#alternative - initialize a new variable and set it to reference name.chop to remove the last character

#Odd Numbers / Even Numnbers

#P - print all odd numbers from 1..99 on separate lines

number = 1
until number > 99
  puts number if number.odd?
  number += 1
end


#solution 2
value = 1
while value <= 99
  puts value
  value += 2
end

#solution 3
selected_numbers = 1.upto(99).select { |number| number.odd? }
puts selected_numbers

#solution 4
selected_numbers = []
1.upto(99) { |number| selected_numbers << number if number.odd? }
puts selected_numbers

#Sum or Product of Consecutive Integers
def prompt(msg)
  puts ">> #{msg}"
end

prompt("Please enter an integer greater than 0:")
input = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
action = gets.chomp.downcase

if action == 's'
  sum = 1.upto(input).reduce(&:+)
  prompt("The sum of the integers between 1 and #{input} is #{sum}.")
elsif action == 'p'
  product = 1.upto(input).reduce(&:*)
  prompt("The product of the integers between 1 and #{input} is #{product}.")
end

