# odd_numbers = (1..99).select(&:odd?)

# #alternative
# value = 1
# while value <= 99
#   puts value
#   value += 2
# end

# value = 1
# unless value > 99
#   puts value
#   value += 2
# end

arr = [1,2,3,4,5,6,7,8,9]

puts arr.select {|x| x % 2 != 0}

# can use the following methods: Integer#upto, Array#select, Integer#odd
