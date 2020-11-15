#ex1
loop do
  puts 'Just keep printing...'
  break
end

#to break the loop 

loop do
  puts 'Just keep printing...'
  break
end


#ex2 - loops are initiated from the inside out / so put break to end the loop
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end

  break
end

puts 'This is outside all loops.'

#ex3
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations +=1
  break if iterations > 5
end

# code explanation
#loop iterates over the given block and stops only when the reserved word break is executed 

# on line 1 the variable iterations is initialized and references the integer 1
# as we loop through this code we can increment iterations by 1 -- this is reassignment of the variable
# we add a condition to the break on line 35
# when we increment the value of iterations we should state that iterations to be greater than 5 to break out of the block
# using the greater than comparison operator to determine when to break out of a loop


#ex4
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts 'Incorrect answer. Please answer "yes".'
end

#ex5
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

#ex 5 alternative
5.times do
  puts 'Hello!'
end

#ex6
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers

#ex7 - while iterates until the condition evaluates to false
#until iterates until the condition evaluates to true
count = 10

until count == 0
  puts count
  count -= 1
end

count = 1

until count > 10
  puts count
  count += 1
end

#ex8
numbers = [7, 9, 13, 25, 18]

until numbers == 0
  puts numbers
  break
end

#alternative method
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

#ex9
for i in 1..100
  puts i if i.odd?
end

#ex10
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}"
end







