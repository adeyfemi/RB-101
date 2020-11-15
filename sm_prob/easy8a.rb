# Sum of Sums

#input: array
#output: sum of the sums of each leading subsequence for the array

#rules:
# => write a method that takes an array
# => returns the sum of the sums of each leading subsequence for that array
# => assume that the array contains at least one number

def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end

sum_of_sums([3,5,2])
sum_of_sums([1, 2, 3, 4, 5])
sum_of_sums([1,5,7,3])


# Alternative solution
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

#You must keep track of two different values. One is a running total that we'll call accumulator
# It progressively sums up the elements of the array. The other total sum should be
# the value returned by our method 

# The 1.upto(numbers.size) is used to generate the correct size for each subset of our numbers array
# We use number.slice(0,count) to get the subset, and then reduce(:+) is used on current subset to
# add up all its elements 