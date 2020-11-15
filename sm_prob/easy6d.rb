# Reversed Arrays (Part 1)

#input: array
#output: array

#rules:
# write a method that takes an array as an argument
# the method should reverse the elements in place (mutates)
# return value should be the same array object
# cannot use array#reverse and array#reverse!

#algorithms:
#1. iterate through an array and sort in reverse from last to first item in the array
#2. sort the array by index 


def reversed_arrays(arr)
  count = arr.size - 1
  new_arr = []
  loop do
    new_arr << arr[count]
    count -= 1
    break if count < 0
  end
  new_arr
end


def reversed_arrays(arr)
  arr.each_with_index.map { |char, index| arr[arr.count-index-1] }
end


list = [1,2,3,4]
result = reversed_arrays(list)
result == [4,3,2,1]
list == [4,3,2,1]
list.object_id == result.object_id


def reverse_arrays(arr)
  arr
  count = arr.size - 1
  loop do
    arr << arr[count]
    arr.pop
    count -= 1
    break if count < 0
  end
  arr
end


# Alternative Solution

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

def reversed_array!(array)
  array.sort_by!.with_index { |_, index| -index }
end


list = [1,2,3,4]
result = reversed_array!(list)
result == [4,3,2,1]
list == [4,3,2,1]
list.object_id == result.object_id