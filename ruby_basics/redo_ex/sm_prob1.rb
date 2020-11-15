#Repeat Yourself

#input: string and integer
#output: string

#rules: a method that takes two arguments
# => prints the string as many times as integer indicates

#algorithm:
# call the method times that takes a do/end block on the second argument
# use puts method to output the first argument based on the integer in the second argument

def repeat(string, multiplier)
  multiplier.times { puts string}
end

repeat('Hello', 3)

#Odd

#input: integer
#output: boolean

#rules:
# => method that takes one argument (pos, neg, or zero)
# => return true if num's abs is odd
# assume the argument is a valid integer value
# => not allowed to use #odd? or #even? 

def is_odd?(num)
  num % 2 == 1
end

def is_odd?(num)
  num.abs.odd?
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)  
puts is_odd?(-8)   
puts is_odd?(0)    
puts is_odd?(7) 

def is_odd?(num)
  num.abs.remainder(2) == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)

#List of Digits 

#input: integers
#output: array of integers

#rules:
# => write a method that takes one argument a pos integer
# => returns a list of the digits in the number

#algorithm:
# => pass an argument into the method
# => convert to strings of integers and convert to an array
# => return the array of integes

def digit_list(numbers)
  numbers.to_s.chars.map {|num| num.to_i}
end

puts digit_list(12345) == [1,2,3,4,5]
puts digit_list(7) == [7] 
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]

#How Many?

#input: array of strings
#ouput: string and integer

#rules:
# => a method that counts the occurences of each element

#algorithm:
# => iterate through the array
# => count each time the tyoe of vehicles is iterated
# => print out the result of the occurences

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurences(vehicles)
  total_occurences = {}

  vehicles.uniq.each do |type|
    total_occurences[type] = vehicles.count(type)
  end
  total_occurences.each {|element, count| puts "#{element} => #{count}"}
end

count_occurences(vehicles)

def how_many(list)
  list.uniq.map do |item|
    puts "#{item} => #{list.count(item)}"
  end
end 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

how_many(vehicles)

#Reverse It (Part 1)

#input: string
#output: string

#rules:
# => a method that takes one argument
# => returns a new string with words in reverse order

#algorithm:
# => intialize a new variable set to an empty array
# => convert the string to an array 
# => iterate through the array and push the elements from last to first into the array

def reverse_sentence(string)
  new_string = []
  string.split.each do |item|
    new_string.unshift(item)
  end
  new_string.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


#Reverse It(Part 2)

#input: string
#ouput: string

#rules:
# => a method that takes one argument - string with one or more words
# => return string with words that contain 5 or more words reversed
# => string contains only letters and spaces and space included when more than one word

#algirithm:

def reverse_words(string)
  new_reversed_word = string.split.map do |char|
    char.size >= 5 ? char.reverse : char
  end
  new_reversed_word.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')

#Stringy Strings

#input: integer
#output: strings

#rules:
# => a method that takes one argument, pos integer
# returns a string of alternating 1s and 0s 
# => always start with 1 and length should match given integer

def stringy(number)
  stringy_num = []
  (number).times do |num|
    num.even? ? stringy_num << 1 : stringy_num << 0
  end
  stringy_num.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#Array Average

#input: array integers 
#output: integer

#rules:
# => method that takes one argument of array of integers
# => returns the average of all numbers in the array as integer
# => no empty array and all positive integers

#algorithm:
# => sum the array and divide the total by the array size

def average(num_array)
  total = num_array.reduce(:+)
  average = (total / num_array.size).to_f
end

puts average([1, 6,5,7])

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

#Sum of Digits

#input: integer
#output: integer

#rules:
# => one method that takes a positive integer and returns the sum of its digits
# => don't use while, until, loop and each

#algorithm: 

def sum(number)
  total = 0
  number.to_s.chars { |num| total += num.to_i }
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#What's my Bonus?

#input: integer and boolean
#output: integer

#rules:
# a method that takes two arguments
# calculates the bonus for a given salary
# if true, half the salary, and zero if false

#algorithm:
# => tenary operator

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

calculate_bonus(2800, true) == 1400
calculate_bonus(1000, false) == 0
calculate_bonus(50000, true) == 25000

