#Arrays and manipulating elements in the array

#Cute Angles + Furhter Exploration

DEGREE = "\xC2\xB0"
DEGREES_IN_MINUTES = 60
MINUTE_IN_SECONDS = 60
SECONDS_PER_DEGREE = DEGREES_IN_MINUTES * MINUTE_IN_SECONDS

def dms(int)
  degree_number = int > 360 ? (int - 360) : int < 0 ? (360 + int) : int
  total_seconds = (degree_number * SECONDS_PER_DEGREE).round
  degree, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(MINUTE_IN_SECONDS)
  format(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(30) == %(30°00'00")
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


#Delete vowels 
#solution 1
def remove_vowels(array)
  array.map { |char| char.delete('aeiouAEIOU')}
end

#solution 2
def remove_vowels(arr)
  arr.map {|i| i.gsub(/[aeiou]/i, '')}
end

#Fibonacci Number Location by Length
def find_fibonacci_index_by_length(num)
  first = 1
  second = 1
  idx = 1

  loop do
    fibonacci = first + second
    idx += 1
    break if second.to_s.size == num

    first = second
    second = fibonacci
  end
  idx
end

#Reversed Arrays (part 1)
#input:
# => arrays 

#output: 
# => the same array object

#rules:
# => array reverses elements in place
# => do not use #reverse and #reverse!

#algorithms:
# => objective is to sort the array in reverse order
# => use sort to reorder the array by the index of the array

#solution 1
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

#solution 2
def reverse!(arr)
  arr.sort! { |a, b| arr.index(b) <=> arr.index(a) }
end

#solution 3
def reverse!(array)
  copy_array = array.dup
  array.map! { |_| copy_array.pop }
end

#Reversed Array (part 2)
def reverse(array)
  count = array.size
  result = []
  array.each do |char|
    result << array[count-1]
    count -= 1
  end
  result
end

#solution 2
def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

reverse(%w(a b e d c)) == %w(c d e b a)

#solution 3
def reverse(array)
  array.reverse_each.with_object([]) { |char, arr| arr << char }
end

#Combining Arrays

#input:
# => array

#output:
# => unique arrays

#rules:
# => method takes two Arrays and returns an Array contains all values 
# => no duplication of values in returned arrays

#algorithm:
# => set union A & B

#solution 1
def merge(arr1, arr2)
  combined_array = arr1 + arr2
  combined_array.uniq
end

#solution 2
def merge(arr1, arr2)
  arr1 | arr2
end

#Halvsies

#input:
# => arrays

#output:
# => arrays split in the middle

#rules:
# => return 2 arrays - if size odd, middle element in the first array

def halvsies(array)
  result = []
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.size(middle, array.size - middle)
  result = [first_half, second_half]
  result
end

#solution 2
def halvsies(array)
  half = (array.length/2.0).ceil
  array.partition.with_index{|_,idx| idx < half}
end

#Find the Duplicate

#solution 1
def find_dup(arr)
  new_hsh = Hash.new(0)
  arr.each { |char| new_hsh[char] += 1 }
  new_hsh.key(2)
end

#solution 2
def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end

#Does My List Include This?

#solution 1
def include?(array, number)
  result = array.select do |char|
    char == number ? true : false
  end
  result.empty? ? false : true
end

#solution 2
def include?(array, value)
  !!array.find_index(value)
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

#Right Triangles

def triangle(number)
  1.upto(number) do |iteration|
    puts (" " * (number - iteration)) + ("*" * iteration)
  end
end



