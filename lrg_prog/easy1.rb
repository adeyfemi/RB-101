# write a method that takes 2 arguments, a string and a positive integer
# prints the string as many times as the integer indicates

def repeat(word, num)
  num.times { |i| puts word }
end

repeat('Hello', 3)

# write a method that takes one integer argument, positive, negative or zero
# method returns true if the number's absolute value is odd. 
# assume that the argument is a valid integer value

def is_odd?(num)
  num.abs.odd? ? true : false
end

is_odd?(2)

# write a method that takes one argument, positive integer 
# returns a list of digits in the number

def digit_list(numbers)
  numbers.to_s.chars.map { |num| num.to_i } # .map(&:to_i)
end

digit_list(12345)
digit_list(7)
digit_list(375200)
digit_list(444)

# brute force approach

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

# write a method that counts the number of occurences of each element in an array

def count_occurences(array)
  collection_hash = {}

  array.each do |item|
    item.downcase!
    collection_hash[item] = array.count(item)
  end

  collection_hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles =  [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurences(vehicles)

def count_occurences(array)
  collection_hash = array.each_with_object({}) do |item, hsh|
    hsh[item] = array.count(item)
  end
  collection_hash.each { |key, value| puts "#{key} => #{value}" }
end

vehicles =  [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurences(vehicles)

# write a method that takes one argument, string and returns a new string in reverse

def reverse_sentence(string)
  string.split.sort {|a, b| b <=> a}.join(' ')
end

reverse_sentence('')
reverse_sentence('Hello World')
reverse_sentence('Reverse these words')

# alternative
def reverse_sentence(string)
  string.split.reverse.join(' ')
end

# write a method that takes one argument, a string containing one or more words
# returns the given string with words that contain five or more characters reversed
# each string will consist of only letters and spaces
# spaces should be included one when more than one word is present

def reverse_words(string)
  reversed_word = string.split.map do |char|
    char.length >= 5 ? char.reverse : char
  end
  reversed_word.join(' ')
end

reverse_words('Professional')
reverse_words('Walk around the block')
reverse_words('Launch School') 

# write a method that takes one argument, a positive integer
# returns a string of alternating 1s and 0s, always start with 1
# the length of the string should match the given integer

def stringy(num)
  stringy_number = 1.upto(num).map { |number| number.odd? ? '1' : '0' }
  stringy_number.join
end

stringy(6)
stringy(9)
stringy(4)
stringy(7)

def stringy(num)
  stringy_number = num.times.map { |number| number.even? ? '1' : '0' }
  stringy_number.join
end

# write a method that takes one argument, an array of integers
# returns the average of all numbers in the array 
# non-empty array and all positive integers

def average(array)
  array.sum / array.size
end

average([1,6])

# write a method that takes one argument, positive integer 
# returns the sum of its digits

# good review question on loop, while, until and ruby methods
def sum(num)
  num.to_s.split('').map(&:to_i).sum
end

sum(23)
sum(496)
sum(123456789)

# write a method that takes two arguments, a positive and a boolean
# calculates the bonus for a given salary
# if boolean is true, the bonus should be half the salary 
# if boolean is false, the bonus should be 0

def calculate_bonus(salary, result)
  result == true ? salary / 2 : 0
end

calculate_bonus(2800, true)
calculate_bonus(1000, false)
calculate_bonus(50000, true)

