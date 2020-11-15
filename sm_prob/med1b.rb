#Rotate (Part 2)

#input: integers, two arguments
#output: integers

#rules:
# => method that can rotate the last n digits of a number
# => assume n is always positive integer

#algorithm:
# => extract the elements from the array starting at the last n digits
def rotate_array(numbers)
  numbers[1..-1] + [numbers[0]]
end

def rotate_rightmost_digits(nums, n)
  array_numbers = nums.to_s.chars
  extracted_numbers = rotate_array(array_numbers[-n..-1])
  string_array = array_numbers[0..-n-1] + [extracted_numbers]
  string_array.flatten.join.to_i
end

rotate_rightmost_digits(735291, 1)
rotate_rightmost_digits(735291, 2)
rotate_rightmost_digits(735291, 3)