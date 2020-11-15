def increment(x)
  x << 'b'
end

y = 'a'
increment(y)
puts y

#Hypothetically, if ruby is pass by value, this code prints a because...
#pass by value strategy creates a copy of y before passing it to #increment; since #increment has a copy of y it can't modify y
#however if pass by reference, code prints ab because ruby passes reference to y to #increment, so x becomes an alias for y. 
#when you modify x, you also modify the aliased object y

#Pass by Value - copy of object is created and it is that copy that gets passed around.
#since it is a copy, it is impossible to change the original object

def plus(x+y)
  x = x + y
end

a = 3
b = plus(a, 2)
puts a
puts b

#passing around immutable values in ruby acts a lot like pass by value

#Pass by Reference - a reference to an object is passed around. 
#ruby appears to use pass by reference when passing mutable objects

def uppercase(value)
  value.upcase!
end

name = 'William'
uppercase(name)
puts name

#If pass by value is employed by immutable objects, but all variables are references - what is happening when we pass an immutable object?

def print_id number
  puts "In method object id = #{number.object_id}"
end


value = 33
puts "Outside method object id = #{value.object_id}"
print_id value

#number and value reference the same object despite the object being immutable - ruby not using pass by value but pss by reference
#KEY POINT - pass by reference isn't limited to mutating methods. A non-mutating method can use pass by reference as well - so pass by reference can be used with immutable objects






