def multiply(x,y)
  x**y
end

# multiply(5, 3) == 15

# #Incorrect method
# def multiply(n1, n2)
#   puts n1 * n2
# end

# multiply(1, 2)

# #1 - focus on the return value not the output of the method
# # - puts returns nil, and the above will always return nil
# # - the * behaves differently depending on what is on the left hand expression

# puts "hi" * 2  
# puts [2] * 2

# #easy_3e.rb
# def square(x)
#   multiply(x,x)
# end

# square(5) == 25
# square(-8) == 64

#the return value of multiply is the result of multiplying two arguments we pass to it
#square method is implicitly returning the value from multiply(n, n)

def square(x,y)
  multiply(x,y)
end

puts square(5,3) 