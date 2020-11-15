# ruby variables

greeting = 'Hello'
whazzup = greeting

puts greeting.object_id
puts whazzup.object_id

# greeting and whazzup are aliases of each other and can use either or to change the object
# the changes work on both variables because they are referencing the same object

puts greeting.upcase!
puts whazzup
puts whazzup.concat('!')
puts greeting

#reassignment to a variable doesn't change the object referecned by the variable
# the variable is bound to a completely new object - made to reference a new object.


greeting = 'Dude!'
puts greeting
puts whazzup

puts greeting.object_id()
puts whazzup.object_id

# Mutability - objects can either by mutable or immutable (cannot be changed)
# in ruby, numbers and boolean are immutable - once created cannot change it

#objects of complex classes, such as nil and Range objects are immutable

#mutable objects - most ruby objects are mutable; objects of a class that permit modification of the object's state in some way
#could be setter methods or by calling methods that perform complex ops

a = %w(a b c)
a

#Object passing 
#1a some languages make copies of method arguments and pass those copies to the method
#1b since they are copies, the original objects can't me modified - objects passed to methods in this way are said to be passed by value
#2a other languages pass references to the method instead - a ref can be used to modify the original object, provided that object is mutable
#2b objects passed to methods in this way are said to be passed by reference and the language is said to be using a pass by reference object passing strategy


#mental model for learning
# - Pass by value

def increment(a)
  a = a + 1
end

b = 3
puts increment(b)
puts b

#numeric object 2 is immutable, b is passed by value to increment and bound to variable a
#a is set to 4 in the method, but b is untouched as it is immutable

#mutable objects can be modified by calling one of their mutating methods
#pass by reference means that only a reference to an object is passed around; variables used inside a method are bound to the original objects

def append(s)
  s << '*'
end

t = 'abc'
puts append(t)
puts t

#the string is mutable and t is modified by #append since t is passed by ref to #append and bound to s
#when s is modified by #append, it modifies the same object referenced by t

