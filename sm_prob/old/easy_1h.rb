def average(array)
  sum = array.sum
  sum / array.size
end

puts average([1,5,87,45,8,8]) == 25
puts average([9,47,23,95,16,52]) == 40

#alternative solution
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  mean = sum / numbers.count
  mean.to_f
end

puts average([1,5,87,45,8,8]) 
puts average([9,47,23,95,16,52]) 


#1- accomplish first part by using Enumerable#reduce (aka #inject),
#1- combines all elements of the given array by applying a binary operation. This operation is specified by a block or symbol
#2 - once sum obtained use #count to count the number of elements in numbers. Then divide sum by number of elements and return the quotient
