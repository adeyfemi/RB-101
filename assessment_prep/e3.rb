#Searching 101

#P - ask user for input and check if the last input is in the array

#input:
# => integer

#output:
# => array of numbers

#rules:
# => only integers

def prompt(msg)
  puts "==> #{msg}"
end

def sequence(count)
  case count
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  when 4 then 'th'
  when 5 then 'th'
  end
end

def first_five
  count = 1
  number_array = []
  loop do
    prompt("Enter the #{count}#{sequence(count)} number:")
    input = gets.chomp.to_i
    number_array << input
    count += 1
    break if number_array.size == 5
  end
  number_array
end

def last_number
  prompt("Enter the last number:")
  final_number = gets.chomp.to_i
end

def conclusion(number_array, final_number)
  if number_array.include?(final_number)
    prompt("The number #{final_number} appears in #{number_array}.")
  else
    prompt("The number #{final_number} does not appear in #{number_array}.")
  end
end

number_array = first_five
final_number = last_number
conclusion(number_array, final_number)

#Arithmetic Integer

#P - ask for user input and then print the evaluations

#input: 
# => integer

#output: 
# => integer

#rules:
# => only integers?
# => do not worry about validating input

prompt("Enter the first number:")
first_number = gets.chomp.to_i

prompt("Enter the second number:")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} + #{second_number} = #{first_number - second_number}")
prompt("#{first_number} + #{second_number} = #{first_number * second_number}")
prompt("#{first_number} + #{second_number} = #{first_number / second_number}")
prompt("#{first_number} + #{second_number} = #{first_number % second_number}")
prompt("#{first_number} + #{second_number} = #{first_number ** second_number}")

#Counting the Number of Characters

#P - ask user input and count the characters (no spaces should be counted)

#input:
# => string

#output:
# => string

#rules:
# => count the words without spaces
# => the string counted should be in quotes

prompt("Please write word or multiple words:")
input = gets.chomp
number_of_characters = input.delete(' ').size

prompt("There are #{number_of_characters} characteters in \"#{input}\".")

#Multiplying Two Numbers

#P - find the multiplication of two numbers

#input:
# => integers

#output:
# => integers

#rules:
# => integers being multiplied

def multiply(n1, n2)
  n1 * n2
end

multiply(5, 3)

#Squaring an Argument

def square(num)
  multiply(num, num)
end

square(5)
square(-8)

#algorithm:
# => product = 1 * 5 = 5
# => multiply(number, product) = 5 * 5 = 25
# => multiply(number, product) = 

def power(n, p)
  product = 1
  p.times { |i| product = multiply(n, product) }
  product
end

def power(n, p)
  product = 1
  1.upto(p) { |num| product = multiply(n, product)}
  product
end

power(5, 3)
power(4, 2)

#Exclusive Or

#P - return true only if the evaluation of the two variables == true

#input:
# =>  boolean

#output:
# => boolean

def xor?(num1, num2)
  return true if num1 && !num2
  return true if num2 && !num1
  false
end

#solution 2

def xor?(num1, num2)
  !!((num1 && !num2) ||(num2 && !num1)
end

xor?(5.odd?, 4.even?)


#Odd Lists

#P - choose every other element in the array 

#input: 
# => integer or strings or empty array

#output:
# => array selecting only the odd elements

#rules:
# => values should be the 1st, 3rd, 5th
# => array can be empty or non-empty

#questions:
# => is it a finite array or can it contain as many characters?
# => how to treat an empty array?

#solution 1

def oddities(array)
  count = 0
  odd_array = []

  loop do
    odd_array << array[count] unless array.empty?
    count += 2
    break if count > array.size - 1
  end

  odd_array
end

#solution 2
def oddities(array)
  odd_array = []
  array.each_with_index { |num, idx| odd_array << num if idx.even? }
  odd_array
end

#solution 3
def oddities(array)
  array.select.with_index { |num, idx| num if idx.even? }
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

#Palindromic Strings

#P - code that checks if a string is the same backwards and forward

#input:
# => string

#output:
# => boolean

#rules:
# => a palindrome reads forward and backward
# => case matters in the evaluation, so capital letters should be false

def palindrome?(str)
  str == str.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          
palindrome?("madam i'm adam") == false 
palindrome?('356653') == true

#palindromic array

def arraydrome?(arr)
  string_array = arr.join
  palindrome?(string_array)
end

arraydrome?(['m', 'a', 'd', 'a', 'm'])

#Palindromic Strings (Part 2)

def real_palindrome?(str)
  palindrome?(str.downcase.delete('^a-z0-9'))
end

real_palindrome?('Madam')
real_palindrome?("Madam, I'm Adam")

#Palindromic Numbers

#P - check if a number is palindromic

#input:
# => integer

#output:
# => boolean

def palindromic_number?(num)
  number = num.to_s
  palindrome?(number)
end

palindromic_number?(34543)



