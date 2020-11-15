#Multiply Lists

#input: two arrays
#output: 1 array

#rules:
# => method that takes two arrays containing list of numbers
# => returns new array that contains the product of each pair of numbers 
# from arguments that have the same index

def multiply_list(arr1, arr2)
  count = 0
  mult_arr = []

  until count == arr1.size
    mult_arr << arr1[count] * arr2[count]
    count += 1
  end
  mult_arr
end

multiply_list([3, 5, 7], [9, 10, 11])

# Alternative Solution
def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.reduce(:*) }
end


def multiply_list_zip(arr1, arr2)
  arr1.zip(arr2).map { |num1, num2| num1 * num2 }
end

multiply_list([3, 5, 7], [9, 10, 11])