# Double Doubles

#input: integer
#output: integer

#rules:
# => double number = even # of digits with left side equal to right side 
# a method that returns 2 times the number provided as an argument
# unless the number is a double number then return as is

# => check if the size is even
# => check if the left number is equal to the right number


#algorithm:
# define a method named twice
# convert the integer into an array of characters 
# iterate through the array by calling the method each 
# if the string integer is equal to the previous then return as is
# return 2 x the number if two different numbers

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side = right_side
  return number * 2
end

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10


#once you understand that what you are looking for is the left and right side of the number
# all you really need to do is derive those values then compare them
# if the logic for getting each side seems complex it is actually probably easier to break it down further

# First turn the number into a string, then find the center of the string
# next create a variable for the right and left sides
# finally compare and return based upon that 

#edge case for single digit numbers; center is calculated as 0


#alternative solutions

def twice(num)
  num_str = num.to_s
  middle = num_str.length / 2
  num_str[0...middle] == num_str[middle..-1] ? num : num * 2
end

