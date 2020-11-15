#Cute Angles

#input: integer
#output: string format

#rules:
# => method takes a floating point # represents btw 0 and 360 deg
# => returns a String in deg, minutes, seconds
# => use deg symbol for degs and 'for mins' and "for secs"
# => deg = 60 minutes, min = 60 secs

DEGREE = "\xC2\xB0"

DEGREE_IN_MINUTES = 60
MINUTES_IN_SECONDS = 60
TOTAL_SECONDS_IN_DEGREE = (DEGREE_IN_MINUTES * MINUTES_IN_SECONDS)

def dms(degree_float)
  degrees, remaining_seconds = (degree_float*TOTAL_SECONDS_IN_DEGREE).divmod(TOTAL_SECONDS_IN_DEGREE)
  minutes, seconds = remaining_seconds.divmod(MINUTES_IN_SECONDS)
  sprintf(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(76.73)


DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(76.73)

#Furhter Exploration (student answer) 
MAX_ANGLE = 360

def dms_refactored(angle)
  total_seconds = angle % MAX_ANGLE * SEC_PER_DEG
  minutes, seconds = total_seconds.divmod(SEC_PER_MIN)
  degrees, minutes = minutes.divmod(MIN_PER_DEG)
  format(%(#{degrees}#{DEGREE}%.2d'%.2d"), minutes, seconds)
end

#Delete vowels

#input: array
#output: array 

#rules:
# => write a method that takes an array of strings
# => returns an array of same string values except aeiou

def remove_vowels(arr)
  arr.map {|word| word.delete('AEIOUaeiou') }
end
remove_vowels(%w(Abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)

# Questions to ask:
# => can the words in the array have space or commas?
# => how many words must be in an array? is one or zero allowed?
# => should we return a new array or the same array modified?
# => can the array include non-alphabet characters?
# => what should be done with non-alphabet charcters?

# Fibonacci number location by length

#input: integer
#output: integer

#rules:
# => method that calculates and returns the index of the first Fibonacci number
# => number has the number of digits specified as an argyument
# => the first Fibonacci number has an index of 1

def find_fibonacci_index_by_length(num)
  count = 0
  idx = 2

  loop do
    break if count.to_s.size == num
    if idx <= 2
      count = 1
    elsif idx > 2
      count += 1
    end
    idx += 1
    count += 1
  end
  idx
end

find_fibonacci_index_by_length(2)
find_fibonacci_index_by_length(3)

#exercise solution
def find_fibonacci_index_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

#alternative student solution
def find_fibonacci_index_by_length(num)
  fib = [1, 1]

  until fib.last.digits.size == num
    fib << fib[-1] + fib[-2]
  end

  fib.size
end

#Reverse arrays (part 1)

#input: array
#output: reversed array

#rules:
# => method that takes an array as argument
# => reverses its elements in place
# => mutate the Array passd into the method, return value should be same array object


#this returns a new array
def reverse!(array)
  count = array.size
  array.each_with_object([]) do |char, arr|
    count -= 1
    arr << array[count]
  end
end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list.object_id == result.object_id

#exercise solution

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

#student solution
def reverse!(arr)
  arr.size.times do |n|
    arr.unshift(arr.delete_at(n))
  end
  arr
end

def reverse_array!(array)
  array.sort_by!.with_index { |_, index| -index }
end


#Reversed Arrays(part 2)

#input: array
#output: new array

#rules:
# => method that takes an array
# => returns a new array with the elements of original list in reverse
# => do not modify original list

def reverse(array)
  count = array.size
  array.each_with_object([]) do |char, arr|
    count -= 1
    arr << array[count]
  end
end

reverse([1,2,3,4]) == [4,3,2,1]          
reverse(%w(a b e d c)) == %w(c d e b a)  
reverse(['abc']) == ['abc']              
reverse([]) == [] 

list = [1, 3, 2]                    
new_list = reverse(list)             
list.object_id != new_list.object_id  
list == [1, 3, 2]                     
new_list == [2, 3, 1]

#review points:
# => understand what size / length means
# => how to divide the array, how can you iterate half way or whole way?
# => how to flip item indexes in an array using the parallel assignment

#exercise solution
def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

#Combinaing arrays

#input: two arrays
#ouput: array uniq

#rules:
# => method that takes two arrays as argument
# => returns an array with uniq items

def merge(arr1, arr2)
  new_arr = (arr1 + arr2).uniq
end

merge([1, 3, 5], [3, 6, 9])

#exercise solution
def merge(array_1, array_2)
  array_1 | array_2
end

# => use Ruby method Array#| method - gives the set union of two arrays
# => result contains no duplicates and works perfectly for merged method

#Halvsies

#input: one array
#output: nested array split in half

#rules:
# => method that takes an array as an argument
# => returns two arrays as nested arrays (contains 1st half & 2nd half arrays)
# => if array is odd size, middle element placed in first half of array

def halvsies(arr)
  sliced_arr = []
  half = arr.length / 2.0
  if arr.size.even?
    sliced_arr << arr[0..half - 1] << arr[half..-1]
  else
    sliced_arr << arr[0..half] << arr[half+1..-1]
  end
  sliced_arr
end

halvsies([1, 2, 3, 4])

#exercise solution
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

#Find the Duplicate

#input: integer
#output: integer

#rules:
# => exactly one value in the array occurs twice
# => method that will find and return the duplicate value 

#algorithm:
# => select items that occurs twice

def find_dup(arr)
  arr.select { |num| arr.count(num) == 2 }.uniq.join.to_i
end

find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73


#exercise solution:
def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end

#Does my list include this?

#input: array, integer two args
#output: boolean - true or false

#rules:
# => method named include? takes an array and search value as args
# => return true if search value 

def include?(arr, number)
  arr.any? { |num| num == number }
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

#alternative solution
def include?(array, value)
  !!array.find_index(value)
end

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

#Right Triangles

#input: integer
#output: stars 

#rules:
# => method that takes integer and displays right triangle
# => sides each have n stars

def triangle(number)
  1.upto(number) do |num| 
    puts (" " * num) + ("*" * number)
    number -= 1
  end
end

triangle(5)
triangle(9)



