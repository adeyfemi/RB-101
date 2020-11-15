#Sum of Digits

# take a number and return the sum of the digits

def sum(number)
  new_array = number.to_s.chars.map {|num| num.to_i}
  new_array.sum  
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#alternative solution

def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end

#alternative 2
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

