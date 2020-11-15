# Halvsies

#input: array
#output: array

#rules:
# write a method that takes an array as an argument
# return two arrays as a pair of nested arrays
# first and second array: half of original array size
# if original array has odd size, middle number should be placed in first half

#algorithm:
# call a method and pass an array as an argument
# create a new array with two empty arrays 
# determine the size of the array and iterate through the original array
# if the array size is even split the array in half and pass to the new array
# else split the array in half plus 1 and pass to the new array  

def halvsies(arr)
  new_arr = []
  first_arr = []
  second_arr = []

  arr.each_with_index do |num, index|
    if index <= arr.size / 2 
      first_arr << num
    else
      second_arr << num
    end
  end
  new_arr.push(first_arr).push(second_arr)
end

halvsies([1,2,3,4])
halvsies([1,5,2,4,3])
halvsies([5])
halvsies([])


# Alternative Solution

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

#1. split the array into two pieces
#2. middle: divide original array size by two. If the original array is odd in size, then
# => call to 'ceil' will account for that, making the first half larger than the second by one
#3. to create both halves, the Array#slice method is used. slice takes two arguments: first is starting index
# => second is the length of the slice. For the second we use middle value as starting index  and specify the length that
# => the remaining elements left in the original array after we removed the first half
#4. halvsies array is created by specifying the two halves as the sole elements of the new array








