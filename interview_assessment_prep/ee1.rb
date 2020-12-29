# Repeat Yourself

'''
Understanding the problem
- input: string, number (integer form) in the method called repeat
  - string of alphabet letters
  - number greater than 0
- output: the first argument in string format ouputted the number of times as the 2nd argument
  - what should happen when the string as numbers? or symbols?
  - should the case be changed or outputted the same as the argument

Example Cases:
- repeat('Hello', 3) => Hello
                        Hello
                        Hello

- repeat('', 0) => ? what should the return value be when it is 0 or -1
- repeat('', 2) => ? what should the return value be when the string is empty but number > 0
- repeat() => return an error as there is no argument passed into the method

Data Structure: string, number => determine how they interact in the algorithm

Algorithm:
- define a new method called repeat and pass in the string as the first argument and a number > 0 as the 2nd argument
- initialize a count variable and set it to the number 0
- invoke a loop with a block
  - inside the block output the string by invoking puts 
  - increment the counter variable by 1
  - break out of the loop when the counter is equal to the number in the 2nd argument

Abstractions:
- invoke a method and output the string a certain number of times specified

Code:
'''
def repeat(str, number)
  counter = 0

  loop do
    puts str
    counter += 1
    break if counter == number
  end
end

'''
- progress in small increments
- 1) start out by defining `repeat` with two parameters
- 2) to ensure things are working, we added `puts string` inside the method and ran the code
- 3) one of the suitable methods is `integer#times` ti execute `puts string` any number of times
'''

def repeat(string, number)
  number.times do
    puts string
  end
end

# Odd

'''
Problem:
- input: integer number that can be +, - or 0
  - do not need to validate the input number is a true integer
- output: return true if the input numbers absolute value is odd
- Questions: 
  - what is an integer?
  - what is an absolute number?
  - what should be returned when the input number is even?
  - what is an even number? and what is a odd number?
    - even numbers are divisible by 2 and remainder is 0
- Rules:
  - you cannot use the built in methods

Examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Data Structure:
- integer

Algorithm:
- check to see if the input number absolute value is not divisible by 2

Code:
'''
def is_odd?(num)
  num.abs % 2 != 0 # solution shows: number % 2 == 1
end

'''
- check whether the number modulo 2 is 1
- use % to perform mudolo operations, so we use it to determine whether the number is odd
'''

def is_odd?(num)
  num.abs.remainder(2) == 1
end

'''
Problem:
- input: integer number greater than 0
- output: array of integer elements
  - in the same order as the input value
  - separated by commas

Examples:
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]

Data Structure:
- integer
- array
  - what steps have to be taken to go from integer to an array?

Algorithm:
- define a method called digit_list and pass in one argument, an integer number
- convert the integer number to a string of characters
- map each character string to an integer number

Code:
'''

def digit_list(num)
  num.to_s.chars.map { |char| char.to_i } # map(&:to_i)
end

'''
Problem:
- input: array of string characters
  - lowe case letters only or uppercase letters only
    - how should you handle nil elements? or empty elements?
- output: hash
  - key is the name of the elements
  - value is the total number of each occurence of the element in the array
  - words are case sensitive 

Examples:
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

output: 
car => 4
truck => 3
SUV => 1
motorcycle => 2

Data Structure:
- array
- hash
  - how do you get from an array to a hash output?
  - how do you display the output?

Algorithm:
- define a method and pass in an array of string characters as argument
- initialize a new hash that has values of 0 to starrt
- iterate through the array by calling each on the array
- for each element, place in the hash as a value
- increment the hash value of the element by 1, for each time it occurs
- return the hash and use puts to output the result

Code:
'''

def count_occurences(vehicles)
  result = frequency_count(vehicles)

  result.each do |type, frequency|
    puts "#{type} => #{frequency}"
  end
end

def frequency_count(vehicles)
  occurence = Hash.new(0)

  vehicles.each do |type|
    occurence[type] += 1
  end
  occurence
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurences(vehicles)

# Reverse It (Part 1)

'''
Problem:
- input: string
  - should it be only alphabets? or can there be alphanumeric
  - what size is the case? upper or lower
- output: string
  - the words reversed (transformation)?
  - keep the same cases
  - return value should be a new string 

Examples:
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

Data Structure:
- string
- array

Algorithm:
- define a method called reverse_sentence that takes one argument
- split the words in the argument into an array using the spaces within the words
- initialize a new empty array
- initialize a variable called count set to the number 0
- use while to iterate through the array 
- select the elements in the array and push into the new array starting from the last item
- return the new array initialized 

Code:
'''

def reverse_sentence(string)
  word_array = string.split
  result = []
  count = word_array.size - 1

  loop do
    result << word_array[-count]
    count -= 1
    break if count < 0
  end
  result.join(' ')
end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

#  Reverse It(Part 2)

'''
Problem:
- input: string
  - one or more words
  - only letters and spaces (only included when more than one word is present)
- output: string
  - if word is five or more characters then reverse

- implicit:
  - characters must be 2 or more
  - no change to the case level

Example:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

Data Structure:
- string
- array

Algorithm:
- define a method called reverse_words and pass in a string argument
- split the words into an array
- initalize a result variable set to reference an empty array
- iterate through the array and check to see if the words size is 5 or more
- if it is 5 or more, reverse the word and push it into a new array
- join the words in the result array
- return the new array

Code:
'''

def reverse_words(string)
  result = []

  string.split.each do |word|
    word.size >= 5 ? result << word.reverse! : result << word
  end

  result.join(' ')
end

# Stringy Strings

'''
Problem:
- input: integer
  - greater than 0
  - both even and odd
- output: string characters
  - start at 1, if even end in 0
  - start at 1, if odd end in 1

Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

Data Structure:
- integer
- string

Algorithm:
- define a method called stringy that takes positive integer as an argument
- initialize a variable called stringy set to an empty string
- count up to the number of the argument and for each number 
  - if odd number, push '1' into the argument, else push '0' into the argument
- return the new variable called stringy

Code:
'''
def stringy(num)
  bits = ''

  1.upto(num) do |number|
    result =  number.odd? ? '1' : '0'
    bits << result
  end
  bits
end

# Average Array

'''
Problem:
- input: array of integers
  - integers greater than 0
  - non-empty arrays 
- output: integer

Examples:
average([1, 6]) == 3
average([1, 5, 87, 45, 8, 8]) == 25

Data Structure:
- array
- integer

Algorithm:
- define a method called average and pass in an array as argument
- initialize a variable to reference the sum of the array
- find the average by taking the sum and dividing by the number of elements in the array

Code:
'''

def average(arr)
  sum = arr.sum # arr.reduce(:+) => sum = arr.reduce { |sum, arr| sum + arr }
  mean = sum / arr.size
  mean
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

'''
- count
- length
- size
  - all three can be used to determine the number of elements in an array
'''

# Sum Digits

'''
Problem:
- input: integer
  - postive integer only
- output: integer
  - sum the numbers in the input

Explicit rules:
- write without using looping constructs

Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

Data Structure:
- integer
- array

Algorithm:
- define a method called sum and pass in an integer as an argument
- split the integers into individual characters in their own index
- sum the numbers in the array

Code:
'''

def sum(num)
  collection = num.digits
  total = collection.sum
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

# What's my Bonus?

'''
Problem:
- input: integer, boolean
  - positive integer (bonus) => can it be zero?
  - boolean = true or false
- output: integer
  - true = salary / 2
  - false = 0

Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

Data Structure:
- integer

Algorithm:
- define a method called calculate_bonus and pass in two arguments: integer, boolean
- if boolean is true -> integer / 2
- if boolean is false -> 0

Code:
'''

def calculate_bonus(num, bonus)
  bonus ? num / 2 : 0
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)






