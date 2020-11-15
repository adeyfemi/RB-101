#method parameter not used
def greetings(str)
  puts 'Goodbye'
end

word = "Hello"

greetings(word)

#method parameter used
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)

#block not executed
def greetings
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

#block executed
def greetings
  yield
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

# - yield controls the interaction with the block

#method can use the return value of the block to perform another action

a = "hello"

[1,2,3].map {|num| a}

#map doesn't have access to 'a' but it can use the value of 'a' to perform transformation on the array since the block can access 'a' and returns it to #map
#methods can access local variables through interaction with blocks

#Pass by value / Pass by reference

def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob','kim']
add_name(names, 'jim')
puts names.inspect


#appending mutates the original array but concatenating does not mutate the original
def add_name(arr, name)
  arr = arr << name
end

names = ['bob','kim']
add_name(names, 'jim')
puts names.inspect


def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
puts test(a)
puts a