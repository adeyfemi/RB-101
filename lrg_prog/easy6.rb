# write method that takes an array of strings
# returns an arry of the same string values except vowels

def remove_vowels(arr)
  arr.map {|char| char.delete('aeiouAEIOU') }
end

def remove_vowels(arr)
  arr.map {|i| i.gsub(/[aeiou]/i, '')}
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))

# a string is being passed into the do/end block parameter, so string methods word

# write a method that calculates and returns the index of the first Fibonacci number
# that has the number of digits in the specified argument

def find_fibonacci_index_by_length(num)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= num

    first = second
    second = fibonacci
  end

  index
end

# write a method that takes an array as an argument 
# reverse elements in place
# return value should be the same as the array object

def reverse!(arr)
  values = arr.dup
  arr.each.with_index { |char, idx| arr[idx] = values[-1 - idx] }
end

def reverse!(arr)
  arr.sort! { |a, b| arr.index(b) <=> arr.index(a) }
end

def reverse!(array)
  copy_array = array.dup
  array.map! { |_| copy_array.pop }
end

# long form method

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

# write a method that takes an array and returns a new array 
# elements in reverse order

def reverse(array)
  new_array = []
  array.each_with_index { |char, idx| new_array << array[-1 - idx]}
  new_array
end

# write method that takes two arrays as arguments
# returns an array that contains all values of the argument with no duplication

def merge(arr1, arr2)
  combined_array = arr1 + arr2
  combined_array.uniq
end

def merge(arr1, arr2)
  arr1 | arr2
end

# write a method that takes an array 
# returns two arrays nested that contain 1/2 and 2nd half respectively
# if original contians an odd number of elements, middle should be in first half

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

# method that will find and return the duplicate value 
# value occurs exactly twice

def find_dup(arr)
  number_count = arr.select { |num| arr.count(num) == 2 }
  number_count[0]
end

def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end

def find_dup(arr)
  arr.tally.key(2)
end

find_dup([1, 5, 3, 1])

# write method named include? takes an array and search a value as argument

def include?(arr, num)
  arr.any? { |char| char == num }
end

include?([1,2,3,4,5], 3) 

def triangle(num)
  1.upto(num) do |char|
    puts (" " * num) + ("*" * char)
    num -= 1
  end
end

triangle(5)
triangle(9)

# cute angles

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







