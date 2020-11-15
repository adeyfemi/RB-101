#Tip Calculator
puts "=> What is the bill?"
bill = gets.chomp.to_f

puts "=> What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip_amount = (bill * (tip_percentage / 100)).round(2)
total = (bill + tip_amount)

puts "=> The tip is #{sprintf("%.2f", tip_amount)}."
puts "=> The total is #{sprintf("%.2f", total)}."