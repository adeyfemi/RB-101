def num_flow(num)
  if num == 1
    '1st'
  elsif num == 2
    '2nd'
  elsif num == 3
    '3rd'
  elsif num == 4
    '4th'
  else
    '5th'
    end
  end

loop do
  numbers = []
  count = 1
  
  loop do
    count_ordinal = num_flow(count)
    puts "Enter the #{count_ordinal} number:"
    answer = gets.chomp.to_i
    numbers << answer
    count += 1
    break if count > 5
  end
  puts "Enter the last number:"
  last_num = gets.chomp.to_i

  if numbers.include?(last_num)
    puts "The number #{last_num} appears in #{numbers}."
  else
    puts "The number #{last_num} does not appear in #{numbers}."
  end

  puts("Do you want to try again? y/n")
  input = gets.chomp.downcase
  break unless input == 'y' || input == 'yes'
end

#Alternative method

numbers = []

puts "Enter the 1st number:"
numbers << gets.chomp.to_i
puts "Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "Enter the 4th number:"
numbers << gets.chomp.to_i
puts "Enter the 5th number:"
numbers << gets.chomp.to_i
puts "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include? last_number
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end



