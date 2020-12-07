#Rotation (Part 1)

#P - Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified

#1. rotate an array
#2. move first element to the end of the array
#3. original array should not be modified
#4. do no use rotate / rotate! methods

#implicit restrictions:
#1. cannot use mutating methods like #pop or #shift


#Examples/test cases: provided

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1] 
x == [1, 2, 3, 4]                 


#Data Structures: array

#Algorithm
#1. create an empty array 
#2. loop through the array 
#3. increment empty array with elements starting from first index to last index
#3. add the first element in original array
#4. return array

#Code Implementation
def rotate_array(array)
  new_array = array.dup 
  new_array << new_array.shift 
end

#shallow copy of object is - variables of obj are copied but reference
#shift is a mutating method to all object references

## can't figure out why two elements does not rotate properly
# def rotate_array(array_of_elements)
#   result = []
#   count = 1

#   if array_of_elements.size == 1
#     result << array_of_elements.first
#   else
#     loop do
#       result << array_of_elements[count]
#       count += 1 
#       break if count == array_of_elements.size
#     end
#   end

#   result.size == 1 ? array_of_elements : result << array_of_elements[0]
# end

# loops always have the following:
#1. a way to select the element
#2. a way to store the element
#3. a way to count the cycle
#4. a way to exit


rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b']) == ['b', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1] 
x == [1, 2, 3, 4]   


#Rotation Part 2

#P - rotate the last n digits 

#input: two arguments, both integers
#output: integer

#explicit:
# => rotating just one digit is the original number
# => use rotate_array method from previous exercise
# => assume n is a positive integer

#Example cases:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

#Data Structure: array

#Algorithm:
# => convert the integer into a string
# => convert string into an array

#Code implementation

def rotate_rightmost_digits(number, n)
  number_array = number.to_s.chars
  number_array[-n..-1] = rotate_array(number_array[-n..-1])
  number_array.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

#Rotation Part 3

#P - return the maximum rotation of the argument

#rules
# => input: integer
# => output: integer

#explicit
# => argument is an integer
# => keep first 2 digits in place
# => rotate again and keep first 3 digits 
# => rotate again and keep the first 3 digits in place

#Example cases
# => 735291: 1) 352917 2) 329175 3) 321759 4) 321597 5) 321579

#Data Structure:
# => array 

#Algorithm
# => convert integer to string to array of characters
# => iterate through the size of the array down to the last 2 digits
# => pass in the argument into the method 
# => return the rotated array 

#Code implementation
def max_rotation(num)
  number_string = num.to_s

  number_string.size.downto(2) do |i|
    num = rotate_rightmost_digits(num, i)
  end
  num
end

#1000 Lights
def lights(num)
  hsh = Hash.new(false)
  1.upto(num) do |n|
    count = n
    until count > num
      hsh[count] = !hsh[count]
      count += n
    end
  end

  hsh.keys.select { |item| hsh[item] }
end

def initialize_lights(num)
  hsh = Hash.new(true)
  1.upto(num) { |count| hsh[count] = !hsh[count] }
  hsh
end

def toggle_switch(num)
  hsh = initialize_lights(num)
  1.upto(num) do |n|
    count = n
    until count > num
      hsh[count] = !hsh[count]
      count += n
    end
  end

  hsh
end

def toggle_lights(num)
  hsh = toggle_switch(num)
  hsh.keys.select { |item| hsh[item] }
end
    
on_lights(5)

#Diamonds 
#P - display a 4-pointed diamond in a n x n grid

#input: integer
#output: diamond in n x n grid

#what is n x n grid?
# => n is an odd integer always

#Examples: diamond(1) = *
# => diamond(3) = centered in middle of longest number in sequence
#  * 
# *** 
#  *

#Data structure - not applicable

#Algorithm
# => loop through the number of times provided
# => on each looop select the odd number 
# => multiply the odd number by the diamond 
# => output the diamond 

def top(number)
  1.upto(number) { |count| puts ('*' * count).center(number) if count.odd? }
end

def bottom(number)
  (number - 1).downto(0) { |count| puts ('*' * count).center(number) if count.odd? }
end

def diamond(number)
  top(number)
  bottom(number)
end

#alternative solution
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) } # it will iterate the number 1 and 0
  # 1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

#Stack Machine Interpretation

#P - create a stack machine using an array

#input: string
#output: integer 

#Data Structure
# => stack array
# => register 

def minilang(str)
  stack = []
  register = 0

  str.split.each do |char|
    case char
    when 'PUSH'  then stack.push(register)
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register += stack.shift
    when 'PRINT' then puts register
    else              register = char.to_i
    end
  end
end

#Word to Digit

#P - change the string numbers to integer numbers (but keep it as a string in sentence)

#input: string
#output: string

#explicit:
# => return the same string 
# => change alphabetical number to integer version 

#implicit:
# => maintain the same case sizes 

#Data Structure
# => array to iterate
# => substitute the string 

#Algorithm
# => iterate through the array
# => substitute the word for the index of the word

DIGITS = ['zero', 'one', 'two,', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

def word_to_digit(string)
  DIGITS.each do |char| # digits iterated on, not the words 
    string.gsub!(/\b#{char}\b/, "#{DIGITS.index(char)}") #needed to change into string interpolation
  end
  string
end

#Fibonacci Numbers (Recursion)
def fibonacci(nth)
  return 1 if nth == 1 || nth == 2
  fibonacci(nth - 2) + fibonacci(nth - 1)
end

#Fibonacci Numbers(Procedural)
def fibonacci(nth)
  first = 1
  last = 1
  count = 1
  loop do
    fibonacci = first + last
    count += 1
    break if count == nth
    first = last
    last = fibonacci
  end
  last
end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do |num|
    first, last = [last, first + last]
  end

  last
end

fibonacci(3)

#solution 1 - small numbers
def fibonacci_last(num)
  fibonacci(num).to_s[-1].to_i
end

#solution 2 - larger numbers
def fibonacci_last(num)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end










