# Palindromic Substrings

#input: strings
#ouput: array of strings

#rules:
# => each substring must consist of the same sequence of characters forward/backward
# => return value should be arranged in the same sequence as the substrings appear in the string
# => duplicate palindromes should be included multiple times
# => use the substrings method from easy8d

#edge case:
# => "AbcbA" is a palindrome but "Abcba" nor "Abc-bA" are. Single characters are not palindromes

#algorithm:
#1. invoke a method and pass in a string as argument
#2. initalize a new variable and set to an empty array
#3. iterate through the strings in the substrings method 
#4. if the string in reverse and > the size of 1 is the same as the string then pass to the
# => initialized array
#5. return the new initialized array 

#Notes:
# => you want the methods doing just one thing

def substring(str)
  output = []
  (0...str.size).each do |idx|
    (idx...str.size).each do|idx2|
      output << str[idx..idx2]
    end
  end
  output
end

def palindromes(string)
  result = []

  substring(string).each do |item|
    result << item if palindrome?(item)
  end
  result
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end


palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
