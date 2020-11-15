#Arithmetic Integer
puts "==> Enter the first number:"
num1 = gets.chomp.to_i
puts "==> Enter the second number"
num2 = gets.chomp.to_i

sum = num1 + num2
subtraction = num1 - num2
product = num1 * num2
division = num1 / num2
remainder = num1 % num2
exponent = num1 ** num2

puts "==> #{num1} + #{num2} = #{sum}"
puts "==> #{num1} - #{num2} = #{subtraction}"
puts "==> #{num1} * #{num2} = #{product}"
puts "==> #{num1} / #{num2} = #{division}"
puts "==> #{num1} % #{num2} = #{remainder}"
puts "==> #{num1} ** #{num2} = #{exponent}"

# => Edge cases to consider:
# => second number that is zero and using floats for decimal places
