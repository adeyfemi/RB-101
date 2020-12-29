# Sum of Sums

'''
Problem:
- input: array of integer elements
  - non-empty arrays
  - numbers are integers
- output: integer
  - sum the elements in succession 

Examples:
sum_of_sums([3, 5, 2]) == 21
  - 3 + (3 + 5) + (3 + 5 + 2)
  - idx (0) + idx (0 + 1) + idx (0 + 1 + 2)

Data Structure:
- array
- integer

Algorithm:
- define a method and pass in one array as an argument
- initialize a new variable called count and set the reference to the number 0
- while the count is less than the size of the array argument 
- iterate through the array using map and inside the block do the following
  - return the index starting from zero and incrementing through the array on each cycle
  - use the variable count to select the correct index number
- return the integer result of summing all numbers returned by map by calling sum on the array

Code:
'''

def sum_of_sums(arr)
  result = []
  arr.size.times.map { |num| result << arr[0..num] } 
  result.flatten.sum
end

def sum_of_sums(arr)
  result = []
  0.upto(arr.size - 1).each { |num| result += arr[0..num] } # why is this reassignment working
  result.sum
end

def sum_of_sums(arr)
  current_number = 0
  result = 0
  arr.each do |num|
    current_number += num
    result += current_number
  end

  result
end

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

# Leading Substrings

'''
Problem:
-input: string
  - one or more strings of alphabets
  - non-empty strings
-output: array of substrings
  - a substring starts at the beginning of the original string and appends the next string
    - element in sucession (see examples)

Examples:
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

Data Structure:
- strings
- arrays (strings converted into arrays - use index references)

Algorithm:
- define a new method and pass in a string as argument
- convert the string into an array of characters
- use the times method, and map the array of characters based on their index position
- for example: 3 elements - 0, 0 & 1, 0 & 1 & 2
- return the mapped strings

Code:
'''

def leading_substrings(str)
  string_characters = str.split('')
  string_characters.size.times.map { |num| str[0..num] }.flatten
end

# All Substrings

'''
Problem:
-input: strings
- output: array of substrings for each leading letter
  - first level is longest and reduces by 1 grouping per row until last element left

Exaxmples:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

Data Structure:
- strings
- arrays (index referencing)
  - loop within a loop as you want it to iterate through all strings then begin again

Algorithm:
- define a method called substrings and pass in a string as argument
- intialize a variable and reference the size of the string 
- iterate through the string using the number of times and inside the block
  - invoke the method leading_substrings and pass in the subsetting method [] starting from the first string_characters
- return the array of substrings

Code:
'''

def substrings(str)
  result = []
  string.size.times { |count| result << leading_substrings(str[count..-1]) }
  result.flatten
end

# Palindromic Substrings

'''
Problem:
-input: string
  - non-empty
  - alphabets with some characters (i.e. spacing, dashes)
- output: array of palindromic strings
  - palindromic strings are the same sequence of characters backwards and forwards
  - single characters are not palindromes
  - and case matters (i.e. upper or lower cases)

Examples:
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

Data Structure:
- strings
- arrays

Algorithm:
- define a new method called palindromes and pass in a string as argument
- iterate through the substring array and select on each letter check
  - if string size is greater than 1 and is the same in reverse
- return the selected strings

Code:
'''

def palindromes(str)
  array_strings = substrings(str).flatten
  array_strings.select do |char|
    if char.size > 1 && char == char.reverse
      char
    end
  end
end

# fizzbuzz

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

# case statement without a value next to it works like a if/else conditional 

# Double Char (Part 1)

'''
Problem:
- input: string
  - non-empty string and other strings
  - could be one string all connected or multiple strings
  - cases can be upper or lower
- output: string
  - each element is multiplied by two

Examples:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

Data Structure:
- strings

Algorithm:
- define a method and pass in a string as argument
- convert the string into characters and iterate using map
  - for each element multiply by 2 inside the block
  - join the string 
- return the join string

Code:
'''

def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

# Double Char (Part 2)

'''
Algorithm:
- initialize a constant and reference an array of vowels
- define a new method and pass in a string as argument
- convert the strings into characters and iterate through the array using map
  - inside the block for each character multiply by 2 if a consonant 
  - else return just the string
- digits, punctuation and whitespace should not be included
- join the array of characters to form a string and return

Code:
'''

def double_consonants(str)
 result = str.chars.map do |char|
    if char =~ /[^AEIOUaeiou0-9]/i
      char * 2
    else
      char 
    end
  end
  result.join
end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

# Reverse the Digits In a Number

'''
Problem:
- input: integer
  - no leading zeros
  - integers only
- output: integer
  - number in reverse order starting from last digit to first

Examples:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654

Data Structure:
- integer
- strings
- array

Algorithm:
- define a method and pass in an integer as argument
- convert the number to a string
- convert the strings into characters and call reverse on the characters
- join the strings and conver to integers then return

Code:
'''

def reversed_number(number)
  number.to_s.reverse.to_i
end

# Get the Middle Character

'''
Problem:
- input: string 
  - non-empty strings
  - multiple words 
- output: string (middle letter or letters)
  - if odd length, return one character
  - if even length retyrn exactly two characters

Examples:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

Data Structure:
- strings

Algorithm:
- define a method and pass in a string as argument
- initialize a new varaible called middle and reference the size of the string divided by 2
- if the size of the string is odd, return the middle variable
  - if size is even return the middle plus 1 more
- return the middle letter or letters

Code:
'''

def center_of(str)
  middle = str.size / 2
  str.size.odd? ? str[middle] : str[middle-1, 2]
end


center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

