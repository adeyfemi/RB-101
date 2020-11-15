#Exclusive Or
def xor?(num1, num2)
  if (num1 == false && num2 == true) || (num1 == true && num2 == false)
    true
  else
    false
  end
end

p xor?(5.even?,4.even?) == true
p xor?(5.odd?,4.odd?) == true
p xor?(5.odd?,4.even?) == false
p xor?(5.even?,4.odd?) == false

#Alternative  method
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end

# => Examples of xor - garage door light switch, esclator start button
# => The xor method does not perform short-circuit evaluations on its operands...
# => Based on the logic table of xor, the result of the operation is inconclusive
# => based on just the value of one operand
# => Both operands need ot be examined before obtaining a result
