# write a program that solicits 6 numbers from the user
# prints a message that describes whether or not the 6th number appears
# amongst the first 5 numbers

def prompt(msg)
  puts "==> #{msg}"
end

count_array = %w(1st 2nd 3rd 4th 5th)

array = []
count = 0

loop do
  prompt("Enter the #{count_array[count]} number:")
  answer = gets.chomp.to_i

  array << answer
  count += 1
  break if count == 5
end

prompt("Enter the last number:")
input = gets.chomp.to_i

if array.include?(input)
  prompt("The number #{input} appeas in #{array}.")
else
  prompt("The number #{input} does not appear in #{array}.")
end

# write a program that prompts user for two positive integers
# prints the results of the following operations on those two numbers
# no need to validate the input

def prompt(msg)
  puts "==> #{msg}"
end

def get_first_number
  prompt("Enter the first number:")
  first_number = gets.chomp.to_i
end

def get_second_number
  second_number = ''
  loop do
    prompt("Enter the second number:")
    second_number = gets.chomp.to_i
    break unless second_number == 0
  end
  second_number
end

def arithmetic(num1, num2)
  prompt("#{num1} + #{num2} = #{num1 + num2}")
  prompt("#{num1} - #{num2} = #{num1 - num2}")
  prompt("#{num1} * #{num2} = #{num1 * num2}")
  prompt("#{num1} / #{num2} = #{num1 / num2}")
  prompt("#{num1} % #{num2} = #{num1 % num2}")
  prompt("#{num1} ** #{num2} = #{num1 ** num2}")
end

first_number = get_first_number
second_number = get_second_number

arithmetic(first_number, second_number)

# write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. spaces should not be counted as a character

prompt("Please write word or multiple words:")
word = gets.chomp

word_size = word.split.join.length # word.delete(' ').size - returns a new string
prompt("There are #{word_size} characters in \"#{word}\".")

# create a method that takes two arguments and returns the result

def multiply(num1, num2)
  num1 * num2
end

multiply(5, 3)

# using multiply method, write a method that computes the square of its argument
def square(num)
  multiply(num, num)
end

square(5)
square(-8)

def power(power, n)
  product = 1
  power.times {product = multiply(n, product)}
  product
end

power(2, 3)

# write a function named xor that takes two arguments and returns true if 
# exactly one is truthy and false otherwise

def xor?(num1, num2)
  (num1 && num2) || (!num2 && !num1) ? false : true
end

# alternative
def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

xor?(5.even?, 4.even?)
xor?(5.odd?, 4.odd?)
xor?(5.odd?, 4.even?) 
xor?(5.even?, 4.odd?)

# write a method that returns an array that contains every other element of an array
# that is passed in as an argument 
# the values in the returned list should be those values in the 1st, 3rd, 5th

def oddities(array)
  new_array = []
  array.each_with_index { |num, idx| new_array << num if idx.even? }
  new_array
end

def oddities(array)
  array.select.with_index {|num, idx| num if idx.even? }
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

# write a method that returns true if the string passed as an argument is a palindrome
def palindrome?(string)
  string == string.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          
palindrome?("madam i'm adam") == false 
palindrome?('356653') == true

def array_palindrome?(array)
  array.join == array.join.reverse
end

array_palindromep?(['feef'])

def palindrome_all?(element)
  element.all? {|ele| palindrome?(ele) == true } if element.class
  element.to_s == elemtn.to_s.reverse
end

# write another method that returns true if the argument is palindromic
# has to be case sensitive

def real_palindrome?(str)
  str = str.downcase.delete('^a-z0-9')
  palindrome?(str)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           
real_palindrome?("Madam, I'm Adam") == true
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false


# write a method that returns true if its integer argument is palindromic, false otherwise
# a palindromic number reads the same forwards and backwards

def palindromic_number?(num)
  palindrome?(num.to_s)
end



