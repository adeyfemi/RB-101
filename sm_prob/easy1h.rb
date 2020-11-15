#Array Average

#array of integers
#return the average of all numbers in the array

#iterate over the array and sum the numbers in a new array
#take the size of old array and use as the divisor

def average(array)
  array
  sum = 0

  array.each.map do |index|
    sum += index
  end
  sum / array.size 
end

puts average([1,5,87,45,8,8]) == 25
puts average([9,47,23,95,16,52]) == 40

#alternative
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number}
  sum / numbers.count
end

# => Enumerable#reduce (#inject) combines all elements of an array applying binary op
# could also do the following: numbers.reduce(:+)
# Further exploration: change return value to .to_f to get Float
