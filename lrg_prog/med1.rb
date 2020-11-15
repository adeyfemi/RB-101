# method rotates array by moving first element to the end of the array
# original array should not be modified

def rotate_array(arr)
  arr[1..-1] << arr[0]
end

# method to rotate a string
def rotate_str(str)
  rotate_array(str.split(''))
end

# method that can rotate last n digits of a number

def rotate_rightmost_digits(num, digit)
  number_array = num.to_s.split('')
  size = number_array.size

  unrotated_digits = number_array[0..size-digit-1]
  rotated_digits = rotate_array(number_array[-digit..-1])
  result = unrotated_digits << rotated_digits
  result.flatten.join.to_i
end

# alternative solution
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# method takes an integer as an argument
# returns the maximum rotation of that argument

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

# method takes one argument - total number of switches
# returns an array that identifies which lights are on after n repititions

# initalize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = 'off' }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == 'on' }.keys
end

# toggle every nth light in lights hash

def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == 'off') ? 'on' : 'off'
    end
  end
end

# run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)

# alternative solution
def toggle_lights(n)
  lights = Hash.new(false)
  (1..n).each do |num|
    count = num
    until count > n
      lights[count] = !lights[count]
      count += num
    end
  end
  lights.keys.select { |light| lights[light] }
end

# method displays a 4-pointed diamond in n x n grid - n is odd integer
# assume argument will always be odd integer

require 'pry'

def diamond(num)
  1.upto(num-1) do |n|
    puts ('*' * n).center(num) if n.odd?
  end
  binding.pry
  num.downto(1) do |i|
    puts ('*' * i).center(num) if i.odd?
  end
end

# alternative solution
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

# stack machine interpretation
def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token
    when 'ADD'   then  register += stack.pop
    when 'DIV'   then  register /= stack.pop
    when 'MULT'  then  register *= stack.pop
    when 'MOD'   then  register %= stack.pop
    when 'SUB'   then  register -= stack.pop
    when 'PUSH'  then  stack.push(register)
    when 'POP'   then  register = stack.pop
    when 'PRINT' then  register puts register
    else               register = token.to_i
    end
  end
end  

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')

# method takes a sentence string as input 
# returns same string with numbered words as numbers
DIGIT_HASH = {
  'zero' => '0' , 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

# alternative solution
NUMBERS = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}

def word_to_digit(sentence)
  NUMBERS.each_pair do |word, digit|
    sentence.gsub!(word, digit)
  end

  sentence
end

# another solution
DIGITS = {
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

def word_to_digit(sentence)
  DIGITS.each { |k, v| sentence.gsub!(k, v)}
  sentence
end

# fibonacci (recursion)

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

fibonacci(3)

# another way to present
def fibonacci(nth)
  if nth < 2
    nth
  else
    fibonacci(nth - 1) + fibonacci(nth - 2)
  end
end

# fibonacci numbers (procedural)
def fibonacci(nth)
  first = 1
  second = 1
  count = 0

  loop do
    if nth <= 2
      1
    end
    fibonacci = first + second
    count += 1
    break if count == nth - 1
    first = second
    second = fibonacci
  end
  second
end

fibonacci(2)

# refactored solution
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

# fibonacci last digit
def fibonacci_last(nth)
  first = 1
  second = 1
  count = 0

  loop do
    fibonacci = first + second
    count += 1
    break if count == nth - 1
    first = second
    second = fibonacci
  end
  second.to_s[-1].to_i
end

fibonacci_last(100)




