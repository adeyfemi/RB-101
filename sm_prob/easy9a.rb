#  Welcome Stranger

#input: array of strings and hash of strings
#ouput: string with string invocation 

#rules:
# => a method that takes 2 arguments
# => array contains 2 or more elements that will produce a person's name
# => hash has two keys and the values
# return value should be a greeting that uses the full name, title and occupation

#algorithm:
# define a method with two arguments
# convert the array of names into a string of words to form the name
# call the hash and output the name and occupation
# return a string with the invocation of the array and hash

def greetings(arr, hash)
  arr = arr.join(' ')
  "Hello, #{arr}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber'})


#alternative solution

def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a \
  #{status[:title]} #{status[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber'})