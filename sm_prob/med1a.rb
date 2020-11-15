#Rotation (Part 1)

#input: array integers
#output: array integers reversed

#rules:
# => method that rotates an array by moving first element to end of array
# => orginal array not modified
# => do not use Array#method or Array#rotate!

def rotate_array(numbers)
  numbers[1..-1] + [numbers[0]]
end

rotate_array([7,4,6])

#arrays - iterate through the array for individual elements
#array indexes can be used to select elements in groups

#Further Exploration
def rotate_string(string)
  new_string = string.chars
  rotate_array(new_string)
end

rotate_string('femi')