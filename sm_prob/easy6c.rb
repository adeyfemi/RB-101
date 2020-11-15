# Fibonacci Number Location By Length

# input: integer
# output: integer

# rules: write a fibonnaci method that calculates and returns the index of the first
# => Fibonacci number that has the number of digits specified as an argument
# => The first Fibonacci number has an index of 1

# problem to be solved:
#1. calculate the fibonacci number that returns the index number and the number in that
# => index should be the number passed into the method as an argument

# algorithm:
#1. define the method and set number_digits as the parameter
#2. initialize the variable first and set to reference integer 1
#3. initialize the variable second and set to reference integer 1
#4. initialize the variable index and set to reference the integer 2
#5. call the loop do/end and increment the index by 1
#6. initialize a variable fibonacci and set to reference first + second variable
#7. break out of the loop if the fibonacci total converted to string and checked for size is greater than or equal to the parameter number_digits
#8. reassign the first variable to reference the second variable
#9. reassign the second variable to reference the fibonacci variable
#10 return the index


#Alternative solution

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end


def find_fibonacci_index_by_length(length)
  array = [1, 10]

  until array[-1].to_s.length == length
    new_value = array[-1] + array[-2]
    array << new_value
  end 

  array.size
end 

find_fibonacci_index_by_length(2)