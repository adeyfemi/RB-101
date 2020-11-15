#Convert a Number to a String!

# STRING_DIGITS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 
#   5 => '5',6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
# }

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  number_array = []
  number.digits.reverse.map do |digit|
    number_array << digit
    number_array.join
  end

  stringy_integer = []
  number_array.map { |digit| stringy_integer << DIGITS[digit]}
  stringy_integer.join
end

#Refactoring Code
def integer_to_string(num)
  num.digits.reverse.map { |digit| DIGITS[digit]}.join
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)


#Suggested Solution
def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

#Alternative Method
DIGITS = [0,1,2,3,4,5,6,7,9]

def integer_to_string(int)
  int.digits.reverse.map{|e| DIGITS[e]}.join
end




