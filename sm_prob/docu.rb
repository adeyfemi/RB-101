#1 class and instance methods
#Both methods can be found on the documentation page for the File class in Core API section
#File::Path is a class method and File#path is an instance method

#2 Optional Arguments Redux
require 'date'

puts Date.new # everything defaults
puts Date.new(2016) #month, mday, start use defaults
puts Date.new(2016,5) #mday, start use defaults
puts Date.new(2016,5,13) #start uses default

#Date class can be found in Standard library API documentation
#Date::new is a class method : new([year = -4712 [month=1[start=Date::ITALY]]]) -> date
#this signature uses [] to show all arguments are optional. 

#3 default positional arguments

def my_method(a, b=2, c=3,d)
  p [a,b,c,d]
end

my_method(4,5,6)

#select calling_methods link from cor API page. Ruby permits default args
#in the middle of a number of positional arguments, positional arguments filled
#first then the default arguments are set with any values supplied and finally
#default argyments are applied to anything remaining

#4 Mandatory Blocks
a = [1,4,8,11,15,19]

value = a.bsearch {|x| x > 8}

puts value
#Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can
#bsearch takes only one argument and returns an element of the Array to which it is applied

#5 Multiple Signatures

a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

#fetch can be called with an index arg, index & default arg or an index arg and a block
#Note that having multiple lines in the signature is another way ruby doc indictes that an arg is optional
#default and block are optional arguments but they can't be used together

#6 Keyword Arguments
5.step(to: 10, by: 3) {|value| puts value}

#if you need a method that works with numbers search: INTEGER, FLOAT, NUMERIC, MATH
#Numeric is the superclass of all numeric types, while Math is a module that
#supplies a lot of number crunching functionality

#7 Parent Class

s = 'abc'
puts s.public_methods.inspect

s = 'abc'
puts s.public_methods(false).inspect

#Every value is ruby is an object --> class --> superclass/parent (inherit all methods)

#8 Included Modules
a = [5, 9, 3, 11]
puts a.min(2) #select the two smallest numbers from the array

#some languages have a feature called multiple inheritance. A class can inherit from 2 or more immediate superclass
#A class can use mix-in modult by using the #include method. 
#Enumerable method provides functionality to iterate through arrays, hash and range


#9 Down the Rabbit Hole (review later)
require 'yaml'
MESSAGES = YAML.load.file()







