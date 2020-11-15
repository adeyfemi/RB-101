#Squaring an Argument
# def multiply(num1, num2)
#   num1 * num2
# end

# def square(num1)
#   multiply(num1, num1)
# end

# p square(5) == 25
# p square(-8) == 64


# => Futther Exploration - generalizes this method to a "power of the n"

def multiply(num1, num2)
  num1 ** num2
end

def square(num1, num2)
  multiply(num1, num2)
end

p square(4,4)