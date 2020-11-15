# All substrings

#input: string
#output: array of substrings

#rules:
# a method that returns all of the substrings of a string
# returned list should be ordered by where in the string the substring begins
# all substrings that start at position 0 should come first and all that start at positon 1, and so on
# the substrings should come in order from shortest to longest

#algorithm:
#1. invoke a method and pass in a string as an argument
#2. initialize a variable called results and set to an empty array
#3. call method (0..string.size) and each and pass each index to the start_index variable
#4. initialize a new variable called this_substring set to the string index (0..-1), which 0 to last
#5. call contact method on results and pass in the leading substrings method as an argument
#6. pass in this_substring as an argument for the method
#7. return the results array 

require pry-byebug

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0..string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

substrings('abcde')

#Alternative solution
def substrings(str)
  output = []
  (0...str.size).each do |idx|
    (idx...str.size).each do|idx2|
      output << str[idx..idx2]
    end
  end
  output
end

substrings('abcde')
substrings('hello-madam-did-madam-goodbye') 
substrings('madam')

def substrings(string)
  solution = []
  for i in (0...string.length)
    for j in (i...string.length)
      solution << string[i..j]
    end
  end
  solution
end

substrings('abcde')









