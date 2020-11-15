# Reversed Arrays (Part 2)

#input: array
#output: new array

#rules:
# write a new method that takes an Array
# return a new array with elements of the original list in reverse
# do not modify the original list

#algorithm:
# call a method and pass in an array as argument
# initialize a variable called count and set to reference array size minus 1
# initiate a new variable called new_arr and set to reference an empty array
# call loop do/end and iterate throught the original array and pass each element in the array to the new array
# return the new array

def reverse(arr)
  count = arr.size - 1
  new_arr = []
  loop do
    if arr.empty?
      new_arr
    else
      new_arr << arr[count]
    end
    count -= 1
    break if count < 0
  end
  new_arr
end

def reverse(arr)
  count = arr.size - 1
  new_arr = []

  until count < 0
    if arr.empty?
      new_arr
    else
      new_arr << arr[count]
    end
    count -= 1
  end
  new_arr
end


# Alternative 
def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

def reverse(array)
  arr.each_with_object([]) {|char, new_arr| new_arr << arr[-char] }
end

reverse([1,2,3,4]) == [4,3,2,1]          
reverse(%w(a b e d c)) == %w(c d e b a)  
reverse(['abc']) == ['abc']              
reverse([]) == [] 
list = [1, 3, 2]                      
new_list = reverse(list)              
list.object_id != new_list.object_id  
list == [1, 3, 2]                     
new_list == [2, 3, 1]  

