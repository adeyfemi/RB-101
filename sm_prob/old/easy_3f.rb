# def xor?(num1, num2)
#   if num1 || num2 == true
#     true
#   else
#     false
#   end
# end


#alternative method

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

# def xor?(value1, value2)
#   (value1 && !value2) || (value2 && !value1)
# end

puts xor?(5.even?, 4.even?). == true
puts xor?(5.odd?, 4.odd?). == true
puts xor?(5.even?, 4.even?). == true
puts xor?(5.even?, 4.even?). == true

#the xor method does not perform short-circuit evaluations on its operands
#based on logic table of xor, the result of the operation is inconclusive based on just the value of one operand
#Both operands need to be examined before obtaining a result