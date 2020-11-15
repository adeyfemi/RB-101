#ex1
#Reassignment, including assigment operators like += does not mutate a variable
#instad it binds the variable to a new object. So b is pointing at a new object
#a is not affected by the reference.

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# code explanation:
# a was initialized on line 1 and set to reference the integer 7
# on line 7 invoke the my_value method and pass a as an argument
# =>  does my_value method mutate the value of the local variable a?
# the method parameter b, variable local to the method points to same object as a, which 7
# on line 4, we reassign b to a new value = 17
# => all that was done was reassign the variable local to the method and did not alter the value of a
# =>  in ruby numbers are immutable, so no way to mutated the object that a references inside the my_value method

#ex2 - local variables are not visible inside the method definition
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

#code explanation
# a was initialized on line 25 and set to reference the integer 7
# on line 31, we invoke the my_value method and pass a as an argument to the method
# on line 28, we reassign the variable a, which is local to the method to a new value = 17
# since numbers are immutable, the variable a initialized on line 25 is no way to mutate the object referenced by a
# the out put on line 32 is 7

#other notes:
# local variables inside the method definition are not visible outside of the method definition
# and methods are entirely self contained, so local variables outside of the method are not visible inside of the method definition

#ex3
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

#code explanation:
# the variable a was initialized on line 46 and set to reference the integer 7
# on line 52, we invoke the my_value method and pass in an argument a + 5
# on line 49, the variable a is reassigned as the local variable b 
# on line 52, since the local variable a outside of the method definition is not visible inside the method, 
# => the out on line 52 is 7

#ex4 - strings can be manipulated outside of the method scope - String#[]=
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# the variable a is initialized on line 63 and set to reference the string 'Xyzzy'
# on line 69, we invoke the method called my_value and pass the local variable a as an argument and binds the parameter b to the string
# on line 66, we call a string method that is a mutating string method [] on the 2nd index position character of the string and set it to reference '-'
# on line 70, the output puts a is 'X-zzy'
# local variable b and a outside of the method are pointing to the same string

#ex4 - assignment never changes the value of an object, it creates a new object
#and then stores the reference to that object in the variable on the left

#ex5
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# on line 82, initialize a variable 'a' and set it to reference the string 'yzzyX'
# on line 88, invoke the my_value method and pass a local varialble a as an argument
# on line 85, reassign the local variable b inside of the method to the string
# on line 89, the output will be 'Xyzzy'
# => assignment to variable (an object) never mutates the object that is referenced

#ex6 - local variables are visible inside blocks, procs and lambdas
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# on line 98, initialize the variable a and set it to reference the integer 7
# on line 105, output the value of a
# on line 104, invoke the method my_value and pass a as an argument into the method invocation
# on line 101, reassign local variable b inside the method to the value 'a+a'
# line 105, the program will not execute due to a unidentified local variable or method error
# => local variables initialized inside the method definition are not visible outside the method definition
# => and local variables initialized outside of the method definition are not visible inside the method definition

#ex7 - method invocation that has a block - can use and modify local variables defined outside the block
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# on line 116, initialize the variable a and set it to reference the integer 7
# on line 117, initialize the variable array and set it to reference an array of integers
# on line 119, invoke the method 'each' method on the array and each takes a block argument
# => as we pass each element of array to the block, we asisgn to the local block variable element
# on line 120, reassign local variable a to the value of element 
# on line 123, output the variable a 

# the block creates a new inner scope, when we access a within the block, no longer in the same scope a was initialized
# block variable scoping rules allows access to local variables in outer scope

#ex8 - missing a variable reference 
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# on line 137, initialize a variable array and set it to reference an array of integers
# on line 138, invoke a method, the each method that takes a block argument on the array
# => as each element of the array is passed ot the block, we assign it to the local variable element
# on line 139, initializa the variable a and set it to reference the value of element 
# on line 142, output the value of a

# error. the variable a inside the block was not initialized outside of the block or inside of the block
# => since there is no local variable named a initialized in a scope external to the scope of that block, the expression
# => a = element is initialization and not reassignment 

#ex9 - 
#shadowing occurs when a block argument hides a local variable
#defined outside the block. outer a is shadowed, the a+=1 has no effect on it.
#change the variable reference to another name to access the correct a
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# on line 158, initialize a variable 'a' and set it to reference the integer 7
# on line 159, initialize the variable array and set it to reference an array with integers
# on line 161, invoke the each method that takes a block on the variable array
# as each element of the array is passed to the block assign the values to the local variable a
# on line 162, reassign to the variable a the value a + 1 
# on line 165, output the variable a 


#ex10 - a at the top is not visible insude the invocation of each method with a block
#because invocation of each is inside my_value and method definitions are self contained
#it isn't visible inside the method invocation with a block.
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# on line 178, initialize the variable a and set it to reference the value 7
# on line 179, initialize the variable array and set it to reference the array of integers
# on line 187, invoke the my_value method and pass in the array variable as an argument
# on line 182, invoke the each method that has a block on the parameter ary
# as each element of ary is passed to the block it is set to the local variable b inside of the block
# on line 183, reassign the variable a to the value a + the local variable b from the block
# on line 188, output the value of variable a  -- result will be an error.










