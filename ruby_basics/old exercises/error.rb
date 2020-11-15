#ex1
def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

#Argumenterror message tells you that the method was given 6 arguments but expects only 1
#NoMethodError - numbers is now bound to the provided argument 1.
#Since integers do not have an each method, this raises a NoMethodError