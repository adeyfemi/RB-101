#Sum or Product of Consecutive Integers
puts "=> Please enter an integer greater than 0:"
num1 = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product"
operation = gets.chomp

sum_result = 0
product_result = 1
iterated_number = num1

if operation.include?("s")
  while iterated_number > 0
    sum_result += iterated_number
    iterated_number -= 1
  end
  puts "The sum of the integers between 1 and #{num1} is #{sum_result}"
elsif operation.include?("p")
   while iterated_number > 0
    product_result *= iterated_number
    iterated_number -= 1
  end
  puts "The product of the integers between 1 and #{num1} is #{product_result}"
end


#alternative solution
def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end


#Further exploration - read documentation on Enumerable#inject