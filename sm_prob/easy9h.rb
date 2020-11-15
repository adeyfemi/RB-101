# Sequence count

#input: integers
#output: array

#rules:
# => a method that takes two integers as arguments
# => first is a count and second is the first number in sequence
# return an array that contains same number of elements as the count
# values in the array will be multiples of the starting number

def sequence(count, first)
  (1..count).map { |value| value * first }
end

sequence(5,1)
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

#Integer#times method will execute the content of the block the number of times
# specified by the integer
# first append number to sequence array and then increment number by value of first
# within the block we multiple the index (that is, each number of the range) by the 
# sequential multiplier which gives us our value for each position in the array


