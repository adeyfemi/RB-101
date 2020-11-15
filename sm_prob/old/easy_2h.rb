# sum or product of consecutive integers

puts "Please enter an integer greater than 0:"
input = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp

sum = 0
product = 1
input_increment = input

loop do
  if answer == 's'
    sum += input_increment
  else
    product = product * (input_increment)
  end

  input_increment -= 1
  break if input_increment == 0
end

if answer == 's'
  puts "The sum of the integers between 1 and 5 is #{sum}"
else
  puts "The product of the integers between 1 and 6 is #{product}"
end


# Alternative 

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

# the compute_sum and compute_product methods are simple and should be familiar
# a better ruby way would be Enumerable#inject method. 



