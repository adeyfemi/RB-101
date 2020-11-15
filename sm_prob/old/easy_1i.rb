def sum(number)
  total = 0
  new_digits = number.to_s.chars  #this is already an array
  new_digits.each {|x| sum+= x.to_i}
  end
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#alternative 1
def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i

  end

  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#alternative 2
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

#Discussion points alternative 1
#1. convertr to a string and then split using chars (use a name that lets you know number is a string)
#2. iterate over the array and on each iteration, increment the sum by the given digit converted back to an integer
#3. if the string is not converted to an integer a TypeError will occur

#Discussion points alternative 2
23.to_s        # => "23"
  .chars       # => ["2", "3"]
  .map(&:to_i) # => [2, 3]
  .reduce(:+)  # => 5

