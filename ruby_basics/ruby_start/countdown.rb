x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

puts "Done!"

#Refactored for simplification

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done!"

x = gets.chomp.to_i

#until loops

until x < 0
  puts x
  x = x - 1
end

puts "Done!"