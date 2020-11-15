#Searching 101

numbers = []

puts "Enter the 1st number:"
numbers << gets.to_i
puts "Enter the 2nd number:"
numbers << gets.to_i
puts "Enter the 3rd number:"
numbers << gets.to_i
puts "Enter the 4th number:"
numbers << gets.to_i
puts "Enter the 5th number:"
numbers << gets.to_i
puts "Enter the last number:"
last_number = gets.to_i

if numbers.include? last_number
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end


#Arithmetic Integer
def prompt(message)
  puts "==> #{message}"
end

prompt("==> Enter the first number:")
first = gets.to_i
prompt("==> Enter the second number:")
second = gets.to_i

prompt("==> #{first} + #{second} = #{first + second}")
prompt("==> #{first} - #{second} = #{first - second}")
prompt("==> #{first} * #{second} = #{first * second}")
prompt("==> #{first} / #{second} = #{first / second}")
prompt("==> #{first} % #{second} = #{first % second}")
prompt("==> #{first} ** #{second} = #{first ** second}")

#Counting the numbers opf characters

#rules: ask user for input and give back # of characters

puts "Please write word or multiple words:"
answer = gets.chomp
number_of_characters = answer.delete(' ').size
puts "There are #{answer.strip.size} characters in \"#{answer}\"."

#Multiplying Two Numbers

#input: integer
#output: integer

#rules:
# => a method that takes two arguments, multiplies them and returns the result

def multiply(num1, num2)
  num1 * num2
end

multiply(5,3) == 15

#Squaring an Argument

#input: integer
#output: integer

#rules: 
# => use multiply method and write a method that computes the square of its argument

def square(num)
  multiply(num, num)
end

square(5) == 25
square(-8) == 64

def power(num, n)
  product = 1
  n.times do
    product = multiply(product, num)
  end
  product
end

#Exclusive Or

#input: boolean
#output: boolean

#rules:
# => method named xor that takes two arguments and returns true
# if exactly one argument is truthy, false otherwise

def xor?(num1, num2)
  if (num1 == false && num2 == true) ||
    (num1 == true && num1 == false)
    true
  else
    false
  end
end

xor?(5.even?, 4.even?)

# the && operator returns a truthy value if both operands are truthy, and
# falsey value if either operand is falsey (if both true = true, if both false = true)
# the || operator returns a truthy value if either or both its operands are truthy,
# falsey value if both operands are falsey (if one true = true)

# || and && are called short circuit operators in that second operand is not evaluated
# if its value is not needed 

#Odd Lists

#input: array
#output: array , even indexes

#rules:
# => method that returns an array that contains every other element 
# values in the returned list should be those values in the 1st, 3rd etc

def oddities(array)
  even_index = []
  array.each_with_index do |num, idx| 
    if idx.even?
      even_index << num
    end
  end
  even_index
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

def oddities(arr)
  arr.select { |element| arr.index(element).even? }
end


#Palindromic Strings (part 1)

#input: string
#output: boolean

#rules:
# => method that returns true if string passed as an argument is a palindrome
# => palindrome reads forwards and backward, case matters and punctuation

def palindrome?(strings)
  strings == strings.reverse
end

palindrome?('madam')
palindrome?('Madam') == false          
palindrome?("madam i'm adam") == false 
palindrome?('356653') == true

palindrome?('356a653')

#Palindromic strings (part2)

#input: strings
#output: boolean

#rules:
# => method returns true if string passed as an argument is a palindrome
# => method is case sensitive and it should ignore all alphanumeric characters
# => may call the palindrome? method


def real_palindrome?(strings)
  strings = strings.downcase.delete('^a-z0-9')
  palindrome?(strings)
end

real_palindrome?('madam')
real_palindrome?('Madam')
real_palindrome?("Madam, I'm Adam")
real_palindrome?('356653')
real_palindrome?('356a653')
real_palindrome?('123ab321')

# String#delete method takes an argument that sort of look like regex, and
# deletes everything formed by the intersection of all its arguments
# any other_str that starts with a caret ^ is negated from count or delete method

#Palindromic Numbers

#input: integers
#output: boolean 

#rules:
# => method that returns true if integer is palindromic

def palindromic_number?(numbers)
  numbers.to_s == numbers.to_s.reverse
end

def palindromic_number?(numbers)
  palindrome?(number.to_s)
end

palindromic_number?(34543)
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true


# Questions when you see integers:
# => what about 0?
# => what about 1?
# => what about decimals? 
# => what about negative?

#Questions when you see strings:

# => what about capital letters?
# => can numbers be part of the string? should it count or not in the process?
# => what about non-alphanumeric characters?
# => should the original be mutated or left alone?
# => can you have an empty string?
# => are lengths of the strings the same?
# => reflect strings using concatenation, interpolation to not mutate original string

#Questions when you see arrays:

# => can it contain different types of characters?
# => should the orginal array stay the same or return a new array?
# => are there restrictions on the method to use to derive the answer  
# => can you have an empty array?
# => should the array length be the same returned?

