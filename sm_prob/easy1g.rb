#Stringy Strings

def stringy(num, count = 0)
  num
  count
  num_string = []

  loop do
    if count.odd? 
      num_string << '1'
    else
      num_string << '0'
    end
    count += 1
    break if count > num
  end
  num_string.join('')
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#alternative solution
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

# => #times method starts counting from 0
# then conditional should return 1 if index is even and 0 if index is odd
# personal solution is using default argument of count = 0

# num = 6

# num_string = []

# if num.even?
#   num_string << '1'
# end

# p num_string.join(' ')
