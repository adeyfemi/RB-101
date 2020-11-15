# Detailed review of Medium Exercise Notes (PEDAC Method)
# what is being tested?
# why is it being tested?
# areas of difficulty?
# what is the collection method? loop method? counting method? 

# input: array
# output: original array

#rules:
# write a method that ROTATES an array by MOVING the first element to the end of the array
# original array should not be modified
# do not use built in methods Array#rotate and Array#rotate!

# array chracteristics
# => 0 to -1 
# => how many items are in the array?
# => how do you extract multiple elements from an array?
# => think about shoes in a closet for example, how would you do it?

#algorithm:
# extract the first element and delete but that mutates the array so this does not meet the rule
# you can take out the 2nd to last element and then add the first element
# sekect the array elements in the index 2 to last and add the first element

def rotate_array(elements)
  elements[1..-1] << elements[0]
end

def rotate_rightmost_digits(number, digits)
  number_chars = number.to_s.chars
  number_chars[-digits..-1] = rotate_array(number_chars[-digits..-1])
  number_chars.join.to_i
end

# method that takes an integer as an argument
# returns maximum rotation of the argument

def max_rotation(number)
  number_chars = number.to_s.size
  number_chars.downto(2) do |num|
    number = rotate_rightmost_digits(number, num)
  end
  number
end

max_rotation(735291)

array = [1, 2, 2, 3, 3, 3, 3]

array.each_with_object({}) do |num, hsh|
  hsh[num] = array.count(num)
end

def lights(quantity)
  lighted = Hash.new(false)
  1.upto(quantity) do |n|
    count = n
    until count > quantity
      lighted[count] = !lighted[count]
      count += n
    end
  end
    lighted.keys.select { |light| lighted[light] }
end

lights(5)

def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = 'off'}
  lights
end

def on_lights(lights)
  lights.select {|_position, state| state == 'on'}.keys
end

def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == 'off') ? 'on' : 'off'
    end
  end
end

def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)

def diamond(num)
  1.upto(num-1) { |n| puts ('*' * n).center(num) if n.odd? }
  num.downto(1) { |i| puts ('*' * i).center(num) if i.odd? }
end

diamond(15)


def diamond(num)
  1.upto(num-1) { |n| puts ('*' * n).center(num) if n.odd? }
  num.downto(1) { |i| puts ('*' * i).center(num) if i.odd? }
end

#Further explorartion
def empty_diamond(num)
  num.times do |count|
    print_row(((num - count) / 2), count, false) if count.odd?
  end
  count = num
  until count.zero?
    print_row(((num - count) / 2), count, false) if count.odd?
    count -= 1
  end
end

def minilang(str)
  string_array = str.split(' ')
  register = 0
  stack = []

  string_array.each do |char|
    case char
    when 'ADD' then register += stack.pop
    when 'PRINT' then register = puts register
    else  register = char.to_i          
 

DIGITS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5',
          'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}

 def word_to_digit(str)
  DIGITS.keys.each do |word|
    str.gsub!(/\b#{word}\b/, DIGITS[word])
  end
  str
end

def fibonacci(n)
  n <= 2 ? 1 : fibonacci(n-1) + fibonacci(n-2)
end

fibonacci(3)

def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end

  last.to_s[-1].to_i
end

def fibonacci(n)
  first = 1
  second = 1
  count = 2

  loop do
    fibonacci = first + second
    count += 1
    break if count > n
    first = second
    second = fibonacci
  end
  second
end

fibonacci(5)






