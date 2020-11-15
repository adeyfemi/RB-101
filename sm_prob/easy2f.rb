#Odd Numbers
number = 0

while number < 100
  number += 1
  puts number if number.odd?
end

#alternative
value = 1

while value <= 00
  puts value
  value += 2
end

1.upto(99) {|num| puts num if num.odd? }


#easy2g

1.upto(99) {|num| puts num if num.even?}

#alternative
value = 1
while value <= 99
  puts value if value.even?
  value += 1
end