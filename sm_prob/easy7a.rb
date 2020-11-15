# Combine Two Lists

#input: array
#output: new array

#rules:
# => write a method that combines two arrays passed in as arguments
# => returns a new array that contains all elements from both array arguments
# with elements taken in alternation
# => assume both arrays are non-empty, and that they have the same number of elements

#algorithm:
#1. write a method and pass two arrays as an argument
#2. iterate through the array and place the items in first array in the even index
#3. iteterate through the array and place the items in 2nd array in odd index

def interleave(arr1, arr2)
  new_arr = arr1 + arr2
  order_arr = []
  count = 0

  loop do
    if count.even?
      order_arr.push(arr1[count]).push(arr2[count]) 
    elsif count.odd?
      order_arr.push(arr1[count]).push(arr2[count])
    end
    count += 1
    break if count == new_arr.size / 2
  end
  order_arr
end


interleave([1,2,3], ['a','b','c'])


def interleave(arr1, arr2)
  result = []
  arr1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

# Array#zip - doesn't do the same thing as method above but it is very close and more flexible

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
  binding.pry
end

interleave([1,2,3], ['a','b','c'])
