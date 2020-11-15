#Plaindromic Strings (Part 1)
def palindrome?(word)
  word == word.reverse
end

p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')

#Further Exploration
=> determines whether an array is palindromic
def palindrome?(array)
  array = array.flatten
  array == array.reverse
end

p palindrome?([2,4,2])

def palindrome?(*string_array)
  string_array.join.reverse == string_array.join
end

p palindrome?([2,4,2])
p palindrome?('madam')



