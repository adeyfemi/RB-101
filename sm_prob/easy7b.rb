# Letter Counter

#input: string
#output: hash

#rules:
# => write a method that takes a string and returns a hash
# => hash keys are lowercase, uppercase and neither 

#algorithm
#1. invoke a method called letter_case_count and pass in a string as argument
#2. convert the string into an array of individual characters
#3. iterate over each character in the array and identify the character case level
#4. pass in the number of times the character case is found in the iteration

def letter_case_count(string)
  result = {}
  arr = string.chars
 
  result[:lowercase] = arr.count { |char| char =~ /[a-z]/ }
  result[:uppercase] = arr.count { |char| char =~ /[A-Z]/ }
  result[:neither] = arr.count { |char| char =~ /[^a-zA-z]/ }
  result
end

letter_case_count('abCdef 123')

#Alternative Solution
UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

letter_case_count('abCdef 123')