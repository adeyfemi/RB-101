# #q1
# if false
#   greeting = "hello world"
# end

# greeting

# #greeting is nil, and no undefined method or local variable exception is thrown.
# #Typically, when you reference an uninitialized variable, Ruby will raise an exception, stating it is undefined
# #However, when you initialize a local variable within an if block, even if that if block doesn't get executed, the local variable is initialized as nil

# #q2

# greetings = {a: 'hi'}
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting
# puts greetings

# #the output of last line is {:a ==> "hi there"}. The reason is because informal_greeting is a reference to the original object
# #The line informal_greeting << ' there' was using the String#<< method, which modifies the object that called it
# #This means that original object was changed, thereby impactuing the value in greetings. If instead of modying the original object, we wanted
# # to only modify informal_greeting but not greetings, there are a few options:
# # - informal_greeting = greetings[:a].clone
# # - informal_greeting = informal_greeting + ' there', which returns a new String object instead of modifying the original object


# #q3a
# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"


# #answers: 1,2,3


# #3b
# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# #answers 1,2,3

# #3c
# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")
#   two.gsub!("two","three")
#   three.gsub!("three","one")
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

#answers 2,3,1

# #q4
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   if dot_separated_words.size < 3 || dot_separated_words.size > 4
#     false
#   end

#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     return false unless is_an_ip_number?(word)
#   end
#   true
# end

# puts dot_separated_ip_address?(4565)

#alternative solution
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

puts dot_separated_ip_address?('4565')

