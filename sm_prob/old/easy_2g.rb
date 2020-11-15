even_numbers = (1..99).select(&:even?)

puts even_numbers

#alternative
value = 1
while value <= 99
  puts value if value.even?
  value += 1 
end

arr = [1,2,3,4,5,6,7,8,9]

puts arr.select {|x| x % 2 == 0}