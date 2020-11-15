puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip_amount = bill * (tip_percentage / 100).round(2)
total = (bill + tip_amount).round(2)

puts "The tip is $#{tip_amount}"
puts "The total is $#{total} "

#adding two places after decimals
print "what is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
percentage = gets.chomp.to_f

tip = ((percentage * 0.01) * bill)
puts "The tip is #{format("$%0.2f", tip)}"

total = bill + tip
puts "The total is #{format("$%0.2f", total)}"