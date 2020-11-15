#ex10
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num_1 = nil
loop do
  puts "Please enter a positive or negative integer:"
  num_1 = gets.chomp
  break if valid_number?(num_1)
end


num_2 = nil
loop do
  puts "Please enter a positive or negative integer:"
  num_2 = gets.chomp
  
  if num_2 == 0 
    puts "Invalid input. Only non-zero integers are allowed."
else
  break if valid_number?(num_2)
  end
end



result = num_1.to_i + num_2.to_i

puts "#{num_1} / #{num_2} is #{result}"


#correct answer

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"



