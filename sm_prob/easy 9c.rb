# Always return negative

#input: integer
#ouput: negative integer or 0

#rules:
# a method that takes a number as argument
# if the argument is positive number, return the negative of the number
# if the number is 0 or negative, return the original number

NEGATIVE = -1

def negative(number)
  if number > 0
    number * NEGATIVE
  elsif number <= 0
    number
  end
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0
        

#alternative solutions
def negative(number)
  number > 0 ? -number : number
end

def negative(number)
  -number.abs
end