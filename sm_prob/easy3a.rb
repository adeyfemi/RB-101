#Searching 101
ordinal = ["1st", "2nd", "3rd", "4th", "5th"]
number_array = []
count = 0

loop do
  break if count > 4
  puts "Enter the #{ordinal[count]} number:"
  number = gets.chomp.to_i
  number_array << number
  count += 1
end
puts "Enter the last number:"
last_number = gets.chomp.to_i
if number_array.include?(last_number)
  puts "The number #{last_number} appears in #{number_array}."
else
  puts "The number #{last_number} does not appear in #{number_array}."
end

# #alternative solution
# numbers = []

# puts "Enter the 1st number:"
# numbers << gets.chomp.to_i
# puts "Enter the 2nd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 3rd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 4th number:"
# numbers << gets.chomp.to_i
# puts "Enter the 5th number:"
# numbers << gets.chomp.to_i
# puts "Enter the last number:"
# last_number = gets.chomp.to_i

# if numbers.include? last_number
#   puts "The number #{last_number} appears in #{numbers}."
# else
#   puts "The number #{last_number} does not appear in #{numbers}."
# end




# ordinal = ["1st","2nd"]

# count = 0

# puts ordinal[count]




