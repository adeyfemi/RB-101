# Combine Lists

'''
Problem:
- input: array
  - two arrays 
  - non-empty and have the same number of elements
- output: new array
  - all elements in the two arrays with elements taken in alternation

Example:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
interleave([1], ['a']) == [1,'a']
interleave([1,2], ['a','b']) == [1, 'a', 2, 'b']

# => first element of first array, then second element of second array
# => all rotation takes 2 elements to populate the new array

Data Structure:
- array

Algorithm:
- define a new method called interleave and pass in two arrays as arguments
- iterate through the array using map with index and on each iteration push elements starting from the first element index
- return the new array

Code:
'''

def interleave(arr1, arr2)
  new_array = []
  arr1.size.times { |idx| new_array << arr1[idx] << arr2[idx] }
  new_array
end 

def interleave(arr1, arr2)
  arr1.size.times.map { |idx| [arr1[idx]] << arr2[idx] }.flatten
end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

interleave([1], ['a']) == [1,'a']

# Lettercase Counter

'''
Problem:
- input: string
  - can be emoty ir contain any type of character
- output: hash
  - three keys: lower, upper or neither
  - spaces and symbols and numbers counted as neither

Examples:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

Data Structure:
- string
- hash

Algorithm:
- define a new method and pass in a string as an argument
- initialize a new variable and set it to reference an empty array
- split the string into an array of characters 
- iterate through the array and on each iteration determine whether the character
  - is an alphabet
  - is a lower or uppercase charcter or neither
- return the hash with the frequency of the letters

Code:
'''

def letter_case_count(str)
  occurences = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |char|
    if char  =~ /[a-z]/ # order of this check does not matter 
      occurences[:lowercase] += 1
    elsif /[A-Z]/ =~ char
      occurences[:uppercase] += 1
    else
      occurences[:neither] += 1
    end
  end

  occurences
end

letter_case_count('abCdef 123')

#ALTERNATIVE SOLUTION 
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

# Capitalize Words

'''
Problem:
- input: strings
  - lower case charcters
  - non-empty strings
- ouput: strings
  - each word capitalized
  - return a new string

Examples:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

Data Structure:
- strings
- arrays

Algorithm:
- define a method and pass in a string as argument
- split the words into an array of words
- iterate through the array using map and for each word transform into a capital letter
- call join on the array returned by calling the map method
- return the new string in capitalized form

Code:
'''

def word_cap(str)
  str.split.map { |char| char.capitalize }.join(' ')
end

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Swap Case

'''
Problem:
- input: strings
  - upper and lower case
  - non-empty
- output: strings
  - new string
  - every uppercase is replaced by lowercase and lowercase replaced by uppercase
  - no change to other characters

Examples:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

Data Structure:
- strings

Algorithm:
- define a new method called swapcase and pass in a string as argument
- call gsub on the string and swap each uppercase letter for lowercase
  - and each lowercase for downcase
- return the swapped string

Code:
'''

def swapcase(str)
  str.gsub(/[A-Za-z]/) do |char|
    char == char.upcase ? char.downcase : char == char.downcase ? char.upcase : char
  end
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


# Staggered Caps(Part 1)

'''
Problem:
- input: strings
  - contains all types of elements
  - can be upper or lower case letters of the alphabet
- output: strings
  - first letter of each word is capitalized
  - all other letters are are staggered upper and lowercase
  - return a new string
  - keyword is switching - means we need to toggle between the characters

Examples:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

Data Structure:
- strings
- arrays

Algorithm:
- define a new method called staggered_case and pass in a string as argument
- initialize a variable and call upcase on the string argument as the reference
- initialize a new variable and set to reference the boolean true
- split the characters into array and call map with index on the array
  - for each character index if even upcase
  - if odd then downcase
- once the array cycle is completed ressign the boolean to false
- return the array of words and join it into a string

Code:
'''

#NEED MORE CLARIFICATION ON THIS QUESTION

def staggered_case(str)
  upper = str.upcase

  toggle = true
  while toggle
    result = upper.chars.map.with_index do |char, idx|
      if idx.even?
        char.upcase
      elsif idx.odd?
        char.downcase
      else
        char
      end
    end
    toggle = false
  end
  result.join
end

#ALternative solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

# Staggered Caps(Part 2)

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i # ignore case to detect letters
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

# Multiplicative Average

'''
Problem:
- input: array of integers
  - non empty array
  - integers only
- outout: strings
  - format of the number in string should be decimal place to three places

Examples:

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

3 x 5 / 2 = 15 / 2 = 7.500

Data Structure:
- array
- strings

Algorithm:
- define a new method pass in an array as argument
- initialize a new variable and calculate the multiplicative average
- output the result of the multiplicative average to three decimal places

Code:
'''

def show_multiplicative_average(arr)
  average = arr.reduce(:*).to_f / arr.size.to_f
  puts "The result is #{format("%.3f", average)}"
end 

def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Multiply Lists

'''
Problem:
- input: arrays
  - two arrays as arguments
  - non-empty arrays
  - same number of elements
- output: one array
  - non-empty
  - half the size of the two arrays elements (one array)
  - return new array

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
multiply_list([2, 4], [1, 3]) == [2, 12]
multiply_list([1], [2]) == [2]

Data Structure:
- array

Algorithm:
- define a new method and pass in two separate arrays as arguments
- initialize a new variable set to reference an empty array
- initiatize a new variable set to reference zero
- iterate through the first array and on each turn multiply the element by the first element in second array
- each element should be multiplied with the number in second array in same index position
- push the numbers multiplied into the new array
- return the new array

Code:
'''

def multiply_list(arr1, arr2)
  arr1.map.with_index { |num, idx| num * arr2[idx] }
end

multiply_list([1], [2])
multiply_list([2, 4], [1, 3])
multiply_list([3, 5, 7], [9, 10, 11])

# Multiply All Pairs

'''
Problem:
- input: two arrays
  - non empty
  - non equal elements in both arrays
  - should the first one always be less or can it be more elements?
- output: one array
  - take first array and each element must be multiplied by all elements in the second array
  - result should be in order of operation
  - array should be the size of the first x second array

Examples:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

Data Structure:
- arrays
- integers

Algorithm:
- define a new method and pass in two arrays as arguments
- initialize a new variable called count set to reference 0
- initialize a variable to reference the size of the new array returned
- initialize a variable to reference an empty array
- while the count is less than the first x second array size
- iterate through the second array and on each turn multiply the number by the first array number per index
- push the result into the new array initialized
- return the new array

Code:
'''

def multiply_all_pairs(arr1, arr2)
  count = 0
  result = []

  while count < arr2.size
    arr1.each do |num|
      result << num * arr2[count]
    end
    count += 1
  end

  result.sort
end

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

multiply_all_pairs([2], [2, 4]) == [4, 8]
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# The End is Near But Not Here

def penultimate(str)
  str.split[-2]
end

