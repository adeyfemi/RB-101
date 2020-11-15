numbers = []
puts "Enter the first number:"
numbers << gets.chomp.to_i
puts "Enter the second number:"
numbers << gets.chomp.to_i

puts numbers[0] + numbers[1]
puts numbers[0] - numbers[1]
puts numbers[0] * numbers[1]
puts numbers[0] / numbers[1]
puts numbers[0] % numbers[1]
puts numbers[0] ** numbers[1]

#alternative method
def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i
prompt("Enter the second number:")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")