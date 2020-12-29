# Cute Angles

'''
Problem:
- input: floating number (i.e. number with decimals)
  - cannot be negative but can be zero - 360
- output: string 
  - format is in degrees, minutes and seconds
  - includes symbols 

- Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

'''
Data Structure:
- integer
- strings

Algorithm:
- initialize constants to represent minutes_per_degree, seconds_per_minute, total_seconds_per_degree
- define a new method called dms and pass in an integer as argument
- initialize the total degrees in seconds as a variable
- call divmod on the total_degrees_in_seconds to get the degrees and seconds 
- call divmod on the seconds and pass in total_seconds as argument to get the minutes and seconds
- format the string to return the degrees, minutes, seconds

Code:
'''

TOTAL_DEGREES = 360
DEGREE = "\xC2\xB0"
MINUTE_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
TOTAL_SECONDS_PER_DEGREE = MINUTE_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degree)
  total_degrees_in_seconds = degree * TOTAL_SECONDS_PER_DEGREE
  degrees, seconds = total_degrees_in_seconds.divmod(TOTAL_SECONDS_PER_DEGREE)
  minutes, seconds = seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d), minutes, seconds)
end

# =>  formatting strings: to deal with both single and double quotes, use %(), %q() or %Q()

def find_degree(degree)
  degree = degree < 0 ? TOTAL_DEGREES + degree : degree

  if degree < 0
    dms(TOTAL_DEGREES + degree)
  elsif degree > TOTAL_DEGREES
    dms(degree - TOTAL_DEGREES)
  else
    dms(degree)
  end
end

# Delete vowels

'''
Problem:
- input: array of strings
  - alphabets only
  - upper and lower cases
- output: array of strings
  - alphabets only
  - upper and lower cases
  - aeiou removed
  - return an array of the same strings 

Examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

Data Structure:
- array
- strings

Algorithm:
- define a new method called remove_vowels and pass in an array of strings as argument
- join the strings and delete the vowels from the string
- split the array and return the array of strings
'''

def remove_vowels(arr)
  arr.join(' ').gsub!(/[aeiouAEIOU]/, '').split(' ')
end

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU')}
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Find Fibonacci Number Location by Length

'''
Problem:
- input: integer
- output: integer
  - index number that has number of digits specified in the argument

Examples:
find_fibonacci_index_by_length(2) == 7  => 1 1 2 3 5 8 13

- fibonacci(1) == 1
- fibonacci(2) == 1 => fibonacci(1) + fibonacci(0) => 1 + 0
- fibonacci(3) == 2 => fibonacci(2) + fibonacci(1) => 1 + 1 
- fibonacci(4) == 3 => fibonacci(3) + fibonacci(2) => 2 + 1

- first fibonacci has an index of 1

Data Structure:
- integer

Algorithm:
- define a new method find_fibonacci_index_by_length and pass in integer as argument
- intialize the first and second variable and set to reference the number 1
- initialize an index to count the interations and set to reference 1
- invoke a loop with a do/end block
  - inside the block, initialize fibonacci and set to reference first + second number
  - increment the index by 1
  - break out of the loop if fibonacci == argument number
  - reassign the first variable to second 
  - reassign the second variable to first
- return the index number

Code:
'''

def find_fibonacci_index_by_length(size)
  first = 1
  second = 1
  idx = 2 

  loop do
    idx += 1
    fibonacci = first + second
    break if fibonacci.to_s.size == size

    first = second
    second = fibonacci
  end

  idx
end

find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(3) == 12
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

# Reversed Arrays (Part 1)

'''
Problem:
- input: array of elements
  - empty list
  - one element list
- output: array of elements
  - last time is moved to the first position
  - mutate the original array
- do not use built in reverse methods

Examples:
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

Data Structure:
- array

Algorithm:
- define a new method called reverse! and pass in an array as argument
- iterate through the array and sort the indexes from highest to lowest
- return the reverse of the array starting from the last element to the first element

Code:
'''

def reverse!(array)
  array.sort! { |a, b| array.index(b) <=> array.index(a) } 
end

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

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"] 

list = ['abc']
reverse!(list) == ["abc"] 
list == ["abc"]

list = []
reverse!(list) == []
list == []


# Reversed Arrays (Part 2)

'''
Problem:
- input: array 
- output: array
  - reverse order but original array not mutated

Examples:
reverse([1,2,3,4]) == [4,3,2,1]          
reverse(%w(a b e d c)) == %w(c d e b a)  
reverse(['abc']) == ['abc']              
reverse([]) == []                       

list = [1, 3, 2]                      
new_list = reverse(list)           
list.object_id != new_list.object_id 
list == [1, 3, 2]                    
new_list == [2, 3, 1]

Data Structure:
- array

Algorithm:
- define a new method called reverse and pass in an array as argument
- initialize an empty array 
- sort the array based on the index position starting from the last to the first

Code:
'''

def reverse(array)
  new_array = []
  array.each_with_index { |el, idx| new_array.unshift(array[idx]) }
  new_array
end

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

def reverse(array)
  array.reverse_each.with_object([]) { |el, arr| arr << el }
end

def reverse(array)
  array.sort { |a, b| array.index(b) <=> array.index(a) }
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

# Combining Arrays

'''
Problem:
- input: two arrays 
- output: one array combined
  - unique elements only
  - in order presented 

Examples:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

Data Structure:
- array

Algorithm:
- define a method and pass in two arrays as arguments
- add the second array to the first array
- call the uniq method on the array and return the result

Code:
'''

def merge(arr1, arr2)
  [arr1 + arr2].flatten.uniq
end

def merge(array_1, array_2)
  array_1 | array_2
end

merge([1, 3, 5], [3, 6, 9])

# Halvsies

'''
Problem:
- input: array
  - empty
  - positive numbers
- output: array split into two arrays
  - if elements in array are odd, first array should have 3 numbers
  - if one element, second array should have an empty array
  - empty argument, two empty arrays
  - nested array is returned

Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

Data Structure:
- array
- nested array

Algorithm:
- define method and pass in one array as argument
- initialize a variable called middle and reference the middle of the two arrays
- if the size of the array is even then push the first half into the first index
- if size of array is even then push first half plus one more to end into first index
- return the nested array 

Code:
'''

def halvsies(array)
  middle = (array.size / 2).ceil
  new_array = []
  new_array << array[0..middle]
  new_array << array[middle..array.size - middle]
  new_array
end

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# Find the Duplicate

'''
Problem:
- input: array of integers 
  - duplicates show up in sets of 2s
- output: integer

Examples:
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

Data Structure:
- array
- integer

Algorithm:
- define a new method called find_dup and pass an array in as argument
- call select on the array to choose the number that shows up twice
- return the number that shows up twice

Code:
'''

def find_dup(array)
  array.select { |el| array.count(el) == 2 }.first
end

def find_dup(array)
  array.find { |element| array.count(element) == 2 }
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


# Does my list include this?

'''
Problem:
- input: array, integer
  - first argument is array, second is integer
  - empty arrays allowed
  - nil arrays allowed
  - empty arrays allowed
- output: boolean
  - do not use include? method

Examples:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

Data Structure:
- arrays
- integers

Algorithm:
- define a method and pass in two arguments
- select the element that is the same as the second argument in the method
- check to see if the array returned is empty, if empty, return false, else true

Code:
'''

def include?(arr, number)
  result = arr.select { |el| el == number}
  result.empty? ? false : true
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

# other methods
def include?(array, value)
  !!array.find_index(value)
end

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

# Right Triangles

'''
Problem:
- input: integer
  - number is greater than 0
- output: stars in string format
  - each star increases by 1
  - spacing starts at 4 and reduces by 1 until 0

Examples:
triangle(5)

    *
   **
  ***
 ****
*****

Data Structure:
- strings
- integers

Algorithm:
- define a method called triangle and pass in an integer as an argument
- initialize a variable to reference the diamond in string format
- initialize a variable to reference the spacing before the diamond
- iterate through the number calling upto method with a do/end block
  - inside the block, multiply the spacing x the argument less 1 
  - inside the block, add the diamond x the iteration number
- display the right triangle

Code:
'''

def triangle(number)
  diamond = '*'
  spacing = ' '

  1.upto(number) do |num|
    puts spacing * (number - num) + diamond * num
  end
end

triangle(5)

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
