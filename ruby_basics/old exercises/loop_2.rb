#ex1
count = 1

loop do
  if count.odd? #can use if count % 2 == 0 instead of a boolean
    puts "#{count}  is odd" #this is a string interpolation
  else
    puts "#{count} is even"
  end
  
  break if count == 5
  count +=1
end

#alternative
count = 1

loop do
  puts count.even? ? "#{count} is even!" : "#{count} is odd"
  break if count == 5
  count += 1
end

#if count = 0, initialize the count at top
#increment before break statement then change the inequality statement

#ex2
loop do
  number = rand(100)
  puts number

  if number.between?(0,10)
    break
  end
end

#alternative 1
loop do
  number = rand(100)
  puts number

  break if number.between?(0,10) #break if number >= 0 && number <= 10 or if (1..10).include? number
  end
end


loop do
  number = rand(100)
  puts number

  if number >= 0 && number <= 10
    break
  end
end

loop do
  number = rand(100)
  puts number

  if (1..10).include? number
    break
  end
end

#ex3
process_the_loop = [true, false].sample

if process_the_loop 
loop do
    puts "The loop was processed!" 
    break
  end
  else
    puts "The loop wasn't processed!"
end

#ex4
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct!" 
    break

  else
    puts "Wrong answer. Try again!"
  end
end

#ex5
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  
  numbers.push(input)
  break if numbers.size == 5
end
puts numbers

#ex6
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty? 
end

puts names

#alternative
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.size == 0 
end

puts names


#can also do break if names.size == 0
#shift method removes the first element from an array and returns the value
#empty allows us to check if the array is empty

#from last to first choose pop

#ex7
5.times do |index|
  puts index
  break if index == 4
end

#ex8
number = 0

until number == 10
  number += 1
  next if number.even?
  puts number
end

#ex9
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5 
  
  puts number_a
  puts number_b
  puts "5 was reached!"

  break 
end

#alternative
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  if number_a == 5 || number_b == 5
    puts "5 was reached"
    break 
  end
end

#ex10
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end



