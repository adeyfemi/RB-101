def calculate_bonus(amount, result)
  if result == true
    amount / 2
  elsif result == false
    0
  end
end


puts calculate_bonus(2800,true) == 1400
puts calculate_bonus(1000,false) == 0
puts calculate_bonus(50000,true)  == 25000

#alternative 2
def calculate_bonus(salary, bonus)
  bonus? (salary / 2) : 0
end

puts calculate_bonus(2800,true) == 1400
puts calculate_bonus(1000,false) == 0
puts calculate_bonus(50000,true)  == 25000

