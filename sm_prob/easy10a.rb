# Rotation (Part 1)

#input: array
#output: array

#rules: a method that rotates array 
# => moving the first element to the end of the array
# => original array should not be modified

#algorithm:
# define a method
# iterate through the array and place each item into a new array starting from index 1
# add the first element in the original array
# return the new array

def rotate_array(nums)
  new_nums = []

  nums.each_with_index do |item, idx|
    new_nums << nums[idx]
  end
  new_nums.shift
  new_nums << nums[0]
  new_nums
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a','b','c']) == ['b','c','a']
rotate_array(['a']) == ['a']

x = [1,2,3,4]
rotate_array(x) == [2,3,4,1]
x == [1,2,3,4]


#alternative solution
def rotate_array(array)
  array[1..-1] + [array[0]]
end

# solution slices everything out of the array except for the first element, then
# appends the original first element to the end 

#Further exploration
def rotate_string(string)
  string[1..-1] + string[0]
end

# to rotate integer, convert to string characters and use index to rotate the items in the integer

