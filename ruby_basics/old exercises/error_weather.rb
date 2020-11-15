#ex2
def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine == 'true'
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

puts predict_weather

#all objects in Ruby except for nil and the Boolean false evaluate as true

#ex3
def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i # all user input will be a string. Covert user input to integer to use.

puts "The result is #{multiply_by_five(number)}!"

#ex4
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }
pets[:dog] = 'bowser'
p pets
