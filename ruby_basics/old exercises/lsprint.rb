#ex5
lines = nil
loop do
puts ">> How many output lines do you want? Enter a number >= 3:"
lines = gets.chomp.to_i
break if lines >= 3
puts "That's not enough lines."
end

while lines > 0
  puts "Launch School is the best!"
  lines -= 1
end
