# Reverse the Digits in a Number

#input: integers
#output: integers

#rules:
# => a method that takes a positive integer as argument 
# => returns the number with digits reversed
# =>  remove all leading zeros

#algorithm:
# => a method that takes an integer as an argument
# => convert the integers into a string using to_s
# => return the reverse of the string and convert to an integer using to_i

def reversed_number(numbers)
  numbers.to_s.reverse.to_i
end

reversed_number(12345)
reversed_number(12213)
reversed_number(456)
reversed_number(12000)
reversed_number(12003)
reversed_number(1)

#alternative solution
def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

# => Instead of saying "Iterate over the number's digits and put them together in reverse order"
# which will probably lead to a loop-based method
# => Use model that can be used with strings and numbers: "Convert the number to a string,"
# reverse the string, convert the result to a number
# => break the problem down into logical steps that mirror operations you can perform on 
# the types used in your method