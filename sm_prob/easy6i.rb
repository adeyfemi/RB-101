# Does my list include this?

#input: array
#output: boolean

#rules:
# write a method named include? that takes an Array and a search value as arguments
# method should return true if the search value is in the array 

#algorithm:
#1. call a method and pass in two arguments, an array and an integer to find in the array
#2. iterate over the array and check to see if the current number matches the integer number to find
#3. if it is in the array return true and return false if it is not in the array

def include?(arr, num)
  new_arr = []

  arr.each do |item|
    if item == num
      new_arr << item
    end
  end
  if new_arr.empty?
    false
  else
    true
  end
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

# Alternative Solution
def include?(array, value)
  !!array.find_index(value)
end

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
