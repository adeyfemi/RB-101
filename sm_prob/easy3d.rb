#Multiplying Two Numbers

def multiply(num1, num2)
  num1 * num2
end

p multiply(5,3) == 15
p multiply([2],2)
p multiply("hi",2)

# => Focus on the return value. Consider the below incorrect implementation
# => Keep in mind that puts returns nil - the output is not the return value
# => The current implementation uses the * operator, which behaves differently depending on what the left hand expression
