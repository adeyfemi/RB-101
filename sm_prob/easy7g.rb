#Multiplicative Average

#input: array of integers
#output: integer

#rules:
# => method with array as argument with integer input
# => multiplies numbers together, divides result by array size
# => print to 3 decimal places

def show_multiplicative_average(arr)
  mult_result = arr.reduce(:*) 
  average = mult_result.to_f / arr.size
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3,5])
show_multiplicative_average([6]) 
show_multiplicative_average([2, 5, 7, 11, 13, 17]) 

#Alternative Solution
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end

