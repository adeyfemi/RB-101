#Notes:
# => Method definitions are self contained with respect to local variables
# => Local variables initialized inside the method definition are not visible
# outside the method definition, and local variables initialized outside the method
# are not visible inside the method definition

# => Shadowing occurs when a block argument hides a local variable that is defined
# outside the block. 

count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  break if count == 5
  count += 1
end

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end

  break
end

puts 'This is outside all loops.'


loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end


counter = 0

loop do
  next if counter.odd?
  counter += 1
  puts counter
  break if counter > 5
end


alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  puts alphabet[counter]
  break if counter >= alphabet.size
  counter += 1
end

#selection using loop

alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    selected_chars << current_char    
  end

  counter += 1
  break if counter == alphabet.size
end

selected_chars

#transformation

fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0

loop do
  current_element = fruits[counter]

  transformed_elements << current_element + 's'   

  counter += 1
  break if counter == fruits.size
end

transformed_elements


def multiply(arr, multiplier)
  new_arr = []
  counter = 0

  loop do
    new_arr << arr[counter] * multiplier
    counter += 1
    break if counter == arr.size
  end
  new_arr
end

my_numbers = [1,4,3,7,2,6]
multiply(my_numbers, 3)


flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}

flintstones.each_with_index do |character, idx|
  flintstones_hash[character] = idx
end

flintstones_hash


total_ages = 0

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.each do |key, value|
  total_ages += value
end

total_ages

ages.values.inject(:+)

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.reject do |_, age|
  age > 100
end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

char_idx = 0

flintstones.each_with_index do |char, idx|
  if char.include?('Be')
    char_idx = idx
  end
end

char_idx

flintstones.index { |name| name[0, 2] == "Be" }


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map {|char| char.slice(0..2)}

flintstones.map! do |name|
  name[0, 3]
end

statement = "The Flintstones Rock"

statement.chars.each_with_object({}) do |char, hash|
  hash[char] = char.count(char)
end 

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift
end

def titleize(words)
  words.split.map {|word| word.capitalize}.join(' ')
end

statement = "The Flintstones Rock"

titleize(statement)


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details['age']
  when 0..18
    details['age_group'] = 'kid'
  when 18..65
    details['age_group'] = 'adult'
  else
    details['age_group'] = 'senior'
  end
end



numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers

count = 0

until count == 10
  count += 1
  puts count
end

numbers = [7,9,13,25,18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end


for i in 1..100
  puts i if i.odd?
end


friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello #{friend}!"
end


count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  break if count == 5
  count += 1
end

loop do
  number = rand(100)
  puts number
  break if number.between?(0,10)
end


numbers = []
count = 0

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  count += 1
  break if count == 5
end

puts numbers

names = ['Sally', 'Joe', 'Lisa', 'Henry']
count = names.size

loop do
  puts names.shift
  count -= 1
  break if count == 0
end

5.times do |idx|
  puts idx
  break if idx == 2
end

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# The `next` line needs to be put after number is incremented because otherwise
# number will reach 1 and then will be stuck in an infinite loop. The next line 
# needs to be put before #puts because that is the line we are trying to skip when number is odd

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  next if number_a != 5 || number_b != 5
  puts "5 was reached!"
  break 
end

#Use `next` to skip the rest of the current iteration. It does not execute the next line of code until 
# condition is met 
# it will next if the criteria is met but it will not next if it is not met and iteration will not work 


def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end

def print_me
  puts "I'm printing within the method!"
end

print_me

# when you use #puts inside a method, you're outputting one thing and returning another
# #puts outputs whatever it's given and returns nil. 

def print_me
  "I'm printing the return value!"
end

puts print_me

# methods will always return something. Therefore, to print the string, all we need to do is place
#puts before the method invocation

def hello
  'Hello'
end

def world
  'World'
end

puts "#{hello} #{world}"


def greet
  hello + ' ' + world
end

puts greet
 
def assign_name(name = 'Bob')
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'


first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"

state = 'tExAs'

state.capitalize!

greeting = "Hello!"
greeting.gsub!('Hello!', 'Goodbye')
puts greeting

alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.chars

words = 'car human elephant airplane'

words.split.each {|char| puts char + 's'}

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = [pets[2], pets[3]]
my_pets = pets[2..3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

my_pets.pop

puts "I have a pet #{my_pets[0]}!"

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
my_pets << pets[1]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

colors = ['red', 'yellow', 'purple', 'green']

colors.each do |color|
  puts "I'm the color #{color}!"
end

numbers = [1, 2, 3, 4, 5]

numbers.map do |number|
  number * 2
end

numbers = [5, 9, 21, 26, 39]

numbers.select do |num|
  num % 3 == 0
end


['Dave', 7, 'Miranda', 3, 'Jason', 11]

[['Dave', 7], ['Miranda', 3], ['Jason', 11]]

array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2

car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

car[:color]


numbers = {
  high:   100,
  medium: 50,
  low:    10
}

puts "A high number is #{numbers[:high]}."

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.map do |level, num|
  num / 2
end

numbers.select do |level, num|
  num < 25
end

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers

{
  car:   { type: 'sedan', color: 'blue', year: 2003 },
  truck: { type: 'pickup', color: 'red', year: 1998 }
}




