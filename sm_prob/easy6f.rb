# Combining Arrays

#input: two arrays
#output: one array

#rules:
# write a method that takes two arrays
# return an array that contains all values of the two argument arrays
# no duplication of values in the returned array, even if there are duplication in original array

#algorithm:
# pass two arrays into the method
# combine the two arrays into one array 
# iterate through the array 
# return a new array and check if the number already exists
# =>  if yes, skip otherwise add to the new array

def merge(arr1, arr2)
  new_arr = arr1 + arr2
  clean_arr = []
  new_arr.each do |num|
    if clean_arr.include?(num)
      next
    else
      clean_arr << num
    end
  end
  clean_arr
end

merge([1,3,5], [3,6,9]) == [1,3,5,6,9]


# Alternative 

def merge(array_1, array_2)
  array_1 | array_2
end

# set union returns a new array by joining array with other_array, excluding any duplicates
# perserving the order from the given arrays

