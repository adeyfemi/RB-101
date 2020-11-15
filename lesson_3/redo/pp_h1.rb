# question 1

if false
  greeting = “hello world”
end

greeting

# greeting is nil here, and no "undefined method or local variable" exception is thrown.
# Typically, when you reference an uninitialized variable, Ruby will raise an exception, stating that it is undefined.
# However, when you initialize a local variable within an if block, even if that if block doesn't get executed, 
# the local variable is initialized to nil

# question 2: what is the result of the last line in the code?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  
puts greetings

# The output is {a: 'hi there'}. The reason is because informal_greeting is a reference to
# the original object. The informal_greeting << ' there' was using String#<< method, which
# modifies the object that called it. This means that the original object was changed, thereby impacting
# the value in greetings. If instead of modifying the original object, we wanted to only modify informal_greeting
# but not greetings, there are a couple of options:

# we could initialize informal_greeting with a reference to a new object containing the same value by
# => informal_greeting = greetings[:a].clone
# we can use string concatenation, informal_greeting = informal_greeting + ' there', which
# returns a new String object instead of modifying the original object

# question 3

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#b

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#c

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# question 4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end



