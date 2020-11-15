#Rotation (part 1)

#input: integer array
#output: integer array

#rules:
# => method rotates an array by moving first element to end of array
# => original array should not be modified
# => do not use array#rotate

def rotate_array(numbers)
  arr = []
  numbers.each { |num| arr << num }
  arr.push(numbers[0]).shift
  arr
end

rotate_array([7, 3, 5, 2, 9, 1])

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1] 
x == [, 4]  

#exercise solution
def rotate_array(array)
  array[1..-1] + [array[0]]
end

#string rotation
def rotate_string(str)
  str_array = str.chars
  rotate_array(str_array)
end

rotate_string('abc')

#student solution 
def rotate_array(array)
  cloned_arr = array.clone
  cloned_arr << cloned_arr.delete_at(0)
  cloned_arr
end

#Rotation (part 2)

#input: integer
#output: integer

#rules:
# method that can rotate the last n digits of a number
# assume n is always a positive number

#algorithm:
def rotate_rightmost_digits(number, position)
  num_array = number.to_s.chars
  remainder_digits = num_array.delete_at(-position) # delete_at is a mutating method - original object changes
  num_array << remainder_digits
  num_array.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291

#exercise solution
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end








