#Palindromic Numbers
def palindromic_number?(num)
  num = num.to_i.to_s
  num == num.reverse 
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(000232)

# => The easiest way to address is to convert to a string then chek that...
# => string is palindromic.

#Further Exploration
# => Since ruby interprets numbers with leading 0s as actual values, a number like
# => 00100 will not be a palindrome because it actually gets passed as the...
# => decimal equivaluent of 00100 in octal (irb says its 64)
# Use String#%method to convert integer into a string with leading zeros
