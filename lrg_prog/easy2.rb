# build a program that randomly generates and prints Teddy's age
# to get the age, you should generate a random number between 20 and 200

name = gets.chomp
age = rand(20..200)
puts "#{name} is #{age} years old!"

# build a program that asks a user for the length and width of a room in meter
# displays the area of the room in both square meters and square feet
# 1 sq meter == 10.7639 sq ft
# no need to validate the input

SQMETER_TO_SQ_FEET = 10.7639

puts "=> Enter the length of the room in meter:"
input = gets.chomp.to_f

puts "=> Enter the width of the room in meters:"
answer = gets.chomp.to_f

sq_meters = input * answer
sq_feet = sq_meters * SQMETER_TO_SQ_FEET

puts "The area of the room is #{sq_meters} square meters " + \ 
"(#{sprintf("%.2f", sq_feet)} square feet)."

# can also use round(number of decimal places)

# create a simple calculator
# program should prompt for a bill amount and tip rate
# program must compute the tip and then display the tip and total amount of the bill

puts "=> What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

tip_amount = (tip / 100).round(2) * bill
total = (bill + tip_amount).round(2)

puts "The tip is $#{format("%.2f", tip_amount)}"
puts "The total is $#{format("%.2f", total)}"

# build a program that displays when the user will retire
# and how many years she has to work till retirement

require 'date'

puts "=> What is your age?"
age = gets.chomp.to_i

puts "=> At what age would you like to retire?"
retirement = gets.chomp.to_i

d = Date.new(2020,10,12).year # current_year = Time.now.year

retirement_year = d + (retirement - age)
retirement_age = age + retirement

puts "It's #{d}. You will retire in #{retirement_year}."
puts "You have only #{retirement_age} years of work to go!"

# write a program that will ask for user's name
# the program will then greet the user
# if user writes name! then the computer years back to the user

puts "What is your name?"
answer = gets.chomp!


if answer[-1] == '!'
  puts "HELLO #{answer.upcase}. WHY ARE YOU SCREAMING?"
else
  puts "Hello #{answer}."
end

# alternative
puts "What is your name?"
answer = gets.chomp


if answer[-1] == '!'
  answer = answer.chop
  puts "HELLO #{answer.upcase}. WHY ARE YOU SCREAMING?"
else
  puts "Hello #{answer}."
end

# print all numbers from 1 to 99, inclusive
# all numbers should be printed on separate lines

1.upto(99) {|num| puts num if num.odd? }

1.upto(99) {|num| puts num if num.even? }

# looping method

value = 1

while value <= 99
  puts value if value.even?
  value += 1
end

# write a program that asks the user to enter an integer greater than 0
# ask if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer

def prompt(msg)
  puts "=> #{msg}"
end

def compute_sum(num)
  1.upto(num).map.reduce(:+)
end

def compute_product(num)
  1.upto(num).map.reduce(:*)
end

prompt("Please enter an integer greater than 0:")
input = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product:")
answer = gets.chomp

case answer
  when 's'
    prompt("The sum of the integers between 1 and #{input} is #{compute_sum(input)}.")
  else
    prompt("The product of the integers between 1 and #{input} is #{compute_product(input)}.")
  end

# what does the code print out

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# initialized the variable name set to reference the string 'Bob'
# initialized the variable save_name set to reference the object referenced by name
# called the method upcase with a bang, which is a mutating method thus affecting
# the original object
# the last line will return nil and output the name BOB

# what will the code print and why? don't run the code until you have tried the answer

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# initialized the variable array1 set to reference an array of strings
# initialied the variable array2 set to reference an empty array
# each method is called on array1 with a block, each item is passed into the block
# parameter and using the "<<" method to pass the item into array2
# each method returns the original array
# each method is called on array1 with a block and the upcase with a bang is called on the values
# that start with C or S
# out for array2 will be out the array with elements that have C or S as upcase
# the values are being mutated not the array reference
# array1 and array2 contain the same string object


