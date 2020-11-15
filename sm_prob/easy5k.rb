#Spin me around in circles

#input: string
#output: string

#rules:
# method takes a string and returns a string that contains the same words 
# each word's character is reversed 

#challenge:
# given the method's implementation, will the returned string be the same object as the one
# => passed in as an argument or a different object

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world")

#Solution

# The method will return a different object.
# Initial thought: return same string object because of 1) mutating method inside do/end block
# => 2) calling each method on resulting array, which also returns the original array

# As soon as the string is converted into an array by calling split method, it is no longer
# possible for us to get back original object again
# str.split.each converts to an array and converts again to a different string

#If reworked to use an array argument instead of a string and then reversed each word calling
# the same methods, then the array that was passed in as an argument and the array returned
# => would be the same object