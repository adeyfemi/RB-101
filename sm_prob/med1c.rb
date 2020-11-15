#Rotation (Part 3)

#input: integers
#output: integers

#rules:
# => method that takes an integer arg
# => returns the maximum rotation of the argument
# => you do not have to handle multiple 0s 

def rotate_array(numbers)
  numbers[1..-1] + [numbers[0]]
end

def rotate_rightmost_digits(nums, n)
  array_numbers = nums.to_s.chars
  array_numbers[-n..-1] = rotate_array(array_numbers[-n..-1])
  array_numbers.join.to_i
end

def max_rotation(numbers)
  n = numbers.to_s.size 
  until n < 2
    rotated_numbers = rotate_rightmost_digits(numbers, n)
    n -= 1
  end
  rotated_numbers
end

#exercise solution
def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

#max_rotation method begins by first determining how many digits we have, then
#starts up a loop. The loop repeatedly rotates the number, starting with the right
#most n digits, then rightmost n-1 digits, until we get down to last 2 digits 