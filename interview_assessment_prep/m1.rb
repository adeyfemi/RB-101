# Rotation (Part 1)

'''
Problem:
- input: array of elements 
  - elements can be integers, or characters
- output: array of elements
  - move first element to the last position
  - original array should not be mutated 
  - do not use rotate built in methods

Examples:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]
x == [1, 2, 3, 4]

Data Structure:
- array

Algorithm:
- define a method and pass in array as argument
- iterate through the array and push elements starting from index 1 to last index
- push index 0 from original array into the new array
- return the new array

Code:
'''

def rotate_array(arr)
  result = []
  arr.each_with_index do |el, idx|
    if idx > 0
      result << el
    end
  end

  result + [arr[0]]
end                  

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# Rotation (Part 2)

'''
Problem:
-input: integer
  - two arguments, argument 2 is the number of digits to rotate in argument 1
  - right most digits will be rotated
- output: integer
  - the digits rotated 
  - use rotate_array to complete the rotation cycle

Examples:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Data Structure:
- array
- integer

Algorithm:
- define a method and pass in two integers as arguments
- convert the first argument into an array of integers
- reassign the last n digits in the first argument to reference the rotate_array from 
  - the second argument to the last digit
- return the two array as a conbined array

Code:
'''

def rotate_rightmost_digits(number, n)
  array_digits = number.digits.reverse
  array_digits[-n..-1] = rotate_array(array_digits[-n..-1]) # mutates the array
  array_digits.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

# Max Rotation

def max_rotation(number)
  size = number.to_s.size
  size.downto(2) do |n|
    number = rotate_rightmost_digits(number, n) # muation of the number happens in the method invoked on this line
  end
  number
end

# 1000 Lights

'''
Problem:
- input: integer
  - represents the number of keys in the hash
- output: array
  - represents the values that remain on after the full rotation using the arrgument in the method

Examples:

- assumed 2 is the argument
round 1: lights[1] = on , lights[2] = on => 
round 2: lights[1] = on, lights[2] = off => [1]

Data Structure:
- hash
- arrays
- integer

Algotithm:
- start by calling toggle_lights with an argument (the number of lights) of 1000
- toggle_lights calls initalize_lights, which creates and returns a Hash that represents
  all lights with a current state of off. 
- toggle_lights subsequently uses 1.upto(lights.size) method call to iterate over the lights
  as many times as needed (1000 based on initial value). It uses to toggle_every_nth_light
  to toggle first every light, then every other light, then every 3rd light and so on,
  until we have iterated over all of the lights 1000 times
- Finally, we call on_lights to select the lights that are still on. We use Hash#select,
  which returns a new Hash that contains only the on lights and then we chain Hash#keys,
  which returns an array with only the keys of the Hash
- using an underscore at the beginning of a parameter name is a common convention to show
  that a parameter isnt used

Code:
'''

# LS Solution
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = 'off' }
  lights
end

def on_lights(lights)
  lights.select { |_position, state| state == 'on' }.keys
end

def toggle_every_nth_light(lights, nth)
  lights.each do |position, value|
    if position % nth == 0
      lights[position] = (state == 'off') ? 'on' : 'off'
    end
  end
end

def toggle_lights(number_of_lights)
  lights = initalize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)

# Solution

def initalize_lights(number)
  lights = Hash.new(0)
  1.upto(number) { |n| lights[n] = 'off' }
  lights
end

def on_lights(lights)
  lights.keys.select { |el| lights[el] == 'on' }
end

def toggle_lights(number)
  lights = initalize_lights(number)
  1.upto(number) do |num|
     count = num
     until count > number
      lights[count] == 'off' ? lights[count] = 'on' : lights[count] = 'off'
      count += num
    end
  end

  on_lights(lights)
end

# Stack Machine Interpretation

'''
Problem:
- input: string
  - specific key word arguments to track the calculation
- output: integer
  - non-existent value will not be supplied
  - no unknown tokens and register will be intialized to 0

Examples:
minilang('PRINT') => 0
minilang('5 PUSH 3 MULT PRINT') => 15

Data Structure:
- array

Algorithm:
- define a method called minilang and pass in a string of uppercase chars as argument
- intialize a variable called stack and set to reference an empty array
- initialize a variable called register and set to reference the integer zero
- split the string argument and iterate through each item 
  - perform the action specified in the instructions for each action
- use a case method to track the current action to take 

Code:
'''

def minilang(words)
  stack = []
  register = 0

  words.split.each do |word|
    case word
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then resgister = stack.pop
    when 'PRINT' then puts register
    when 'PUSH'  then stack = stack.push(register)
    else register = word.to_i
    end
  end
  register
end

# Word to Digit

'''
Problem:
- input: string
  - non-empty
  - contians letters and numbers and symbols
- output: string
  - references to numbers in words are changed to numerical form 
  - for example, five will 5

Examples:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

Data structure:
- array
- string

Algorithm:
- initialize a hash as a constant with key as the numbered words and values as the key
- define a method and pass in a string as argument
- split the string and iterate through each word, inside the block
  - call gsub on the word and substitute for the values inside the hash
- return the new word modified (original modified)

Code:
'''

NUMBERS = {
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(str)
  NUMBERS.keys.each do |key| 
    str.gsub!(/\b#{key}\b/, NUMBERS[key])
  end
  str
end

# Fibonacci Numbers (Recursion)

'''
Problem:
- input: number
  - non-zero, positive integer number
- output: integer
  - comput the sum of all integers from 1 to n (argument in the method)

Examples:
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

Data Structure:
- integer

Algorithm:
- define a method called fibonacci and pass in an integer as argument
- return 1 if the number is 2 or less
- else return the sum of the argument less 1 and less 2 

Code:
'''
def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

# Fibonacci Numbers (Procedural)
def fibonacci(n)
  first = 1
  second = 1
  count = 2
  while count < n
    first, second = [second, first + second]
    count += 1
  end

  return 1 if n <= 2
  second
end

# Alternative Solution
def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end
  last
end

# Fibonacci Numbers (Last Digit)
def fibonacci_last(n)
  fibonacci(n).to_s[-1].to_i
end

# Alternative Solution
def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end