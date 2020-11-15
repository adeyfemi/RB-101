# Leading Substrings

#input: string
#output: array of substrings

#rules:
# => write a method that returns a list of all substrings of a string that start
# => at the beginning of the original string
# return value should be arranged from shortest to longest substring

#algorithm:
#1. invoke a method and pass in a string as an argument
#2. split the string into an array of characters 
#3. call the method Array.new and set the size to an index of 3
#4. on each iteration subset the srring by the index number (i.e. 0..idx)

def leading_substrings(string)
  Array.new(string.size) { |idx| string[0..idx]}
end

leading_substrings('abc')

def leading_substrings(string)
  string.split('').each_with_index.map do |c, i|
    string.slice(0..i)
  end
end

leading_substrings('abc')

def leading_substrings(string)
  count = 0
  new_string = []

  loop do
    break if count == string.size 
    new_string << string.slice(0..count)
    count += 1
  end
  new_string
end

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Alternative Solution
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

#The expression string[0..index] may need a bit of explanation; 
#it simply returns a substring of string. 
#The substring starts at position 0, and ends at position index