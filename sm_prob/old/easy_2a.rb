random_age = rand(20..200)

puts "Teddy is #{random_age} years old!"

#Discussion points
#described in documentation as rand (Kernel) and range defined with two dots 

#Further Exploration

random_age = rand(20..200)

puts "What is your name?:"
name = gets.chomp

if name.empty?
  puts "Teddy is #{random_age} years old!"
else
  puts "#{name} is #{random_age} years old!"
end