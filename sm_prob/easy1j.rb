#What's my Bonus?

#require two arguments, a positive and a boolean
#calculates the bonus of a given salary: true = 1/2 salary, false = 0

def calculate_bonus(salary, bonus = true)
  if bonus == true
    bonus_amount = salary / 2
  else
    bonus_amount = 0
  end
  bonus_amount
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

#alternative using tenerary method
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

