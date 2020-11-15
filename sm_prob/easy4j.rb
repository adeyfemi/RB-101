#Convert a Signed Number to a String!
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  num.digits.reverse.map { |digit| DIGITS[digit]}.join
end

def repeating_symbol(int)
  case int <=> 0
  when -1 then "-#{integer_to_string(-int)}"
  when +1 then "+#{integer_to_string(int)}"
  else integer_to_string(num)
  end
end

def signed_integer_to_string(int)
  repeating_symbol(int)
end

p signed_integer_to_string(-4321)
p signed_integer_to_string(-123)


#Alternative Method
def integer_to_string(num)
  num.digits.reverse.map{|i| DIGITS[i]}.join
end

def signed_integer_to_string(num)
  if num < 0
    integer_to_string(-num).prepend('-')
  elsif num > 0
    integer_to_string(num).prepend('+')
  else
    integer_to_string(num)
  end
end

p signed_integer_to_string(-4321)
p signed_integer_to_string(-123)

#Notes on solution
# => Very similar to easy4d.rb
# => The expression number <=> 0 is ruby's spaceship operatot
# => compares the left side against the right side, then returns +1 if the left...
# => side is greater than the right, -1 if the left side is smaller than the right
# => and 0 if the values are the same. 

