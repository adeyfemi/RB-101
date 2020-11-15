# repeat yourself

#P - a method that will return a string a certain number of times 

#input:
# => first parameter = string; second parameter = integer
#output:
# => string output a certain number of times

#rules:
# => explicit: output string; 
# => implicit: 

#additional questions:
# what if the string is empty?
# is the argument only strings or can it be integers and alphanumerics?
# does the string have to be a certain length?

#solution 1
def repeat(str, num)
  count = 0

  loop do
    puts str
    count += 1
    break if count == num
  end
end

repeat('Hello', 3)

#solution 2
def repeat(str, num)
  count = num

  while count > 0
    puts str
    count -= 1
  end
end

repeat('Hello', 3)

#solution 3
def repeat(str, num)
  num.times { |number| puts str }
end

repeat('Hello', 3)

#solution 4
def repeat(str, num)
  count = 0

  until count == 3
    puts str
    count += 1
  end
end

repeat('Hello', 3)

#odd

#P - a method that checks whether a number's absolute value is odd

#input:
# => integer

#ouput:
# => boolean: true or false

#rules:
# => expicit: one argument (+, - or 0) and number is a valid integer value
# => not allowed to use odd? or even? in solution

#solution 1
def is_odd?(num)
  num.abs % 2 != 0
end

def is_odd?(num)
  number = num > 0 ? num : -1 * num
  number % 2 != 0
end

def is_odd?(num)
  num % 2 == 1
end

def is_odd?(num)
  num.remainder(2) != 0
end 

puts is_odd?(2)    
puts is_odd?(5)    
puts is_odd?(-17)  
puts is_odd?(-8)   
puts is_odd?(0)   
puts is_odd?(7)


#list of digits

#P - method that returns a list of digits in the number

#input:
# => integers

#output:
# => array of integers

#rules:
# => method that returns a boolean: true or false
# => method takes one argument; but can it be any other form? i.e. string or floats? or empty integer?

def digit_list(number)
  number.to_s.chars.map { |char| char.to_i }
end

def digit_list(number)
  number_string = number.to_s
  count = 0
  number_array = []

  loop do
    number_array << number_string[count].to_i
    count += 1
    break if count == number_string.size
  end
  number_array
end

def digit_list(number)
  number_string = number.to_s
  count = 0
  number_array = []

  until count == number_string.size
    number_array << number_string[count].to_i
    count += 1
  end
  number_array
end

digit_list(12345)
digit_list(7)
digit_list(375290)
digit_list(444)

#how many?
#P - method that counts the number of occurences of each element in a given array

#input:
# =>  array of strings - not case sensitive

#output:
# => hash, counting the number of elements in the array

#rules:
# => strings are case sensitive
# =>  only strings of character greater than 1 and elements greater than 1?

#questions:
# => can there be empty strings in the array and can you have other types of elements?

def count_occurences(vehicles)
  vehicle_hash = Hash.new(0)

  vehicles.each { |type| vehicle_hash[type.downcase] += 1 }
  vehicle_hash.each { |car, quanity| puts "#{car} => #{quanity}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck', 'suv',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurences(vehicles)

#solution 2

def count_occurences(array)
  occurences = {}

  array.uniq.each { |element| occurences[element] = array.count(element) }
  occurences.each { |element, count| puts "#{element} => #{count}" }
end

# reverse it

#P - a method that reverses the order of a string (1, 2 to 2, 1)

#input:
# => strings empty or greater

#output:
# => strings in reverse

#rules:
# return a boolean result by using equality method invocation

#algorithm:
# => place string object into an array
# => use count to start the index at the size of the array
# => create a result array to capture the reverse elements
# => iterate through the array and push the last item as first and so on 
# => return a string output and test to ensure it is true

#questions:
# => should it only be strings as arguments?
# => should you return the same array or a new array?
# => 

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

# this solution pushes each element to the first index of the array 
def reverse_sentence(str)
  result_array = []

  str.split.each do |word|
    result_array.unshift(word)
  end
  result_array.join(' ')
end

# the new array has one more index than it requires, so needs to be eliminated 
def reverse_sentence(str)
  string_array = str.split
  count = string_array.size
  new_array = []

  loop do
    new_array << string_array[count]
    count -= 1
    break if count < 0
  end
  new_array.shift
  new_array.join(' ')
end

reverse_sentence('')
reverse_sentence('Hello World')
reverse_sentence('Reverse these words')

#reverse it (part 2)

#P - reverse a string that is > than 5 length, leave the rest alone

#input:
# => strings of length > 1

#output:
# => strings with some reversal

#rules:
# => return words that contain 5 or more characters reversed
# => strings contain only letter and spaces
# => spaces included only when more than one word is present

def reverse_words(str)
  reversed_string = str.split.map do |char|
    char.size >= 5 ? char.reverse! : char
  end
  reversed_string.join(' ')
end

#solution 2
def reverse_words(str)
  words = []

  str.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

#stringy strings

#P - take an integer and turn it into bits (1 and 0s)

#input:
# => integer greater than 1

#output:
# => strings output of bits

#rules:
# => must return an alternate of strings '1 and 0s' starting with 1
# => length of stirng should match the given integer

#algorithm:
# => iterate through the integer from 1 to n
# => check to see if the number is odd, if yes return 1
# => check to see if the number is even, if yes return 0

def stringy(number)
  bits = []

  1.upto(number) do { |num| num.odd? ? bits << 1 : bits << 0 }
  bits.join
end

#solution 2
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

#array average

#P - find the average of the numbers in an array

#input:
# => integers 

#output:
# => average of the integers

#rules:
# => non empty array of integers and numbers are greater than 0
# => the result should be an integer

#solution 1
def average(array)
  average = array.sum / array.size
  average
end

#solution 2
def average(array)
  total = 0

  array.each { |num| total += num }
  total / array.size
end

#solution 3
def average(array)
  array.reduce(&:+) / array.size
end

average([1, 6])

#sum of digits 

#P - return the sum of the digits

#input:
# => integers

#output:
# => sum of the digits

#rules:
# => do not use looping construct
# => return positive integer

def sum(number)
  total = 0
  number.to_s.split('').map { |num| total += num.to_i }
  total
end

#solution 2
def sum(number)
  number.to_s.chars.map(:&to_i).reduce(:+)
end

#what's my bonus?

#P - calculate the bonus of a salary given

#input:
# => integer and boolean

#ouput:
# => integer based on the conditional statement

#rules;
# => positive integer and a boolean only

def calculate_bonus(salary, bonus = true)
  result = bonus == true ? salary / 2 : 0
  result
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)
