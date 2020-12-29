# Multiplying Two Numbers

'''
Problem:
- input: integer 
  - positive integers, but can it be 0, 1 or negative
- output: intger

Examples:
multiply(5, 3) == 15

Data Structure:
- integer

Algorithm:
- multiply the first number by the second number argument
- return the value calculated by the operation

Code:
'''

def multiply(n1, n2)
  n1 * n2
end

multiply(5, 3) == 15

# Squaring an Argument

'''
Problem:
- input: integer
  - positive or negative or zero?
  - what is the definition of squaring? : multiply a number by itself
- output: integer
  - result is the number multiplied by itself

Examples:
square(5) == 25
square(-8) == 64

Data Structure:
- integer

Algorithm:
- define a method called square with one integer argument
- invoke the multiply method and pass in the argument in the square method as arguments
- return the square of the argument

Code:
'''

def square(n)
  multiply(n, n)
end

square(5) == 25
square(-8) == 64

# Power to the N 

def power(n, exp)
  total = 1
  1.upto(exp) do |num|
    total = multiply(n, total)
  end
  total
end

power(3, 2)

# Exclusive Or

'''
Problem:
- input: integer and boolean
  - postive integer number but can it be zero or negative?

- output: boolean result
  - true if exactly one of the arguments is truthy, false otherwise

- exclusive or : condition where only one of the arguments is truthy
- must be a boolean result not the return value of the || or && operators

Examples:
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

Data Structure:
- integer

Algorithm:
- define a method called xor? that takes in two arguments
- check if only one argument is true and return a boolean result

Code:
'''
def xor?(num1, num2)
  !!((num1 && !num2) || (num2 && !num1)) # this forces it to be a boolean result
end

xor?(5.even?, 4.even?)

'''
- objective is to ensure that only one argument is true
- so you have to force one or the argument to true or false  
'''

# Odd Lists

'''
Problem:
- input: array of elements -> numbers, strings, empty
- output: array of elements
  - values in returned list should in the even indexes but odd counts
  - can you mix the type of elements: strings with integers?

Examples:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

Data Structure:
- array

Algorithm:
- define a method called oddities and pass in an array as argument
- iterate through the array using select with index 
- select the even indexes 
- return the selected elements

Code:
'''

def oddities(arr)
  arr.select.with_index { |el, idx| idx.even? }
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

# Palindrome Strings (part 1)

'''
Problem:
- input: string
  - could be alphabets or numbers
- output is a boolean -> true or false 
  - character cases matters and punctuation matters

- palindrome reads the same forward and backward

Examples:
palindrome?("madam") == true
palindrome?("Madam") == false       
palindrome?("madam im adam") == false 
palindrome?('356653') == true

Data Structure:
- string

Algorithm:
- define a method called palindrome? and pass in one argument
- compare the argument to the result of reversing the argument in place

Code:
'''

def palindrome?(str)
  str == str.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false
palindrome?("madam i'm adam") == false 
palindrome?('356653') == true

# Method to determine if an array or string are palindromes
def palindrome_string_arr(char)
  char[0..-1] == char[0..-1].reverse
end

palindrome_string_arr('madam')
palindrome_string_arr([1,2,2,1])

# Palindrome Strings (part 1)
'''
- two new rules: 1) case insensitive and 2) ignore all non-alphanumeric
- 
'''

def real_palindrome?(str)
  str = str.downcase.delete('^A-Za-z0-9')
  palindrome?(str)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

# Palindromic Numbers

'''
Problem:
- input: integer
  - does it have to positive or can it be negative and zero?
  - should we worry about leading zeros?
- output: boolean
  - true if palindromic, false otherwise

Examples:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

Data Structure:
- integer
- string

Algorithm:
- define a method called palindromic_number? and pass in one argument
- invoke the palindrome? function and pass in the argument with a call to a string
- return the boolean from the method

Code:
'''

def palindromic_number?(number)
  palindrome?(number.to_s)
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

