#Odd

def is_odd?(x)
  x.abs % 2 != 0
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

#LS solution

def is_odd?(number)
  number % 2 == 1
end

#Remainder operators return negative results if the number on the left is negative
#modulus always returns a non-negative result if the number on the right is positive.

#using the Integer#remainder operator

def is_odd?(x)
  x.remainder(2) != 0
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

