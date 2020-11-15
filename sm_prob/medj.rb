#Sum Square - Square Sum

#input: integer
#output: integer

#rules
#method that computes difference between the square of the sum of the first n
# => positive integers
# and the sum of the squares of the first n positive integers

def sum_square_difference(num)
  total_square = 0
  num_square = 0

  1.upto(num) do |number|
    total_square += number
  end

  1.upto(num) do |fig|
    num_square += fig**2
  end

  product_total = total_square ** 2
  square_difference = product_total - num_square
  square_difference
end

sum_square_difference(3) 


