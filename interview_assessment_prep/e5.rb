# ASCII String Value

'''
Problem:
- input: string
  - empty strings
  - string of 1
  - string of multiple elements

- output: integer
  - the ASCII numbers

- method can use the string#ord method

Examples:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

Data Structure:
- integer
- array
- string

Algorithm:
- define a new method called ascii_value and pass in a string argument
- call the chars method on the argument to create an array of characters
- iterate through the array and sum the value of each character by calling ord on the character
- return the intger from calling the string#ord method

Code:
'''

def ascii_value(str)
  str.chars.map { |char| char.ord }.sum
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# After Midnight (Part 1)

'''
Problem:
- input: integer
  - zero
  - negative (minutes before 24:00 hrs)
  - positve (minutes after 24:00 hrs)

- output: string
  - format is in "hh:mm"
  - 24:00 is == "00:00"

Examples:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"


Data Structure:
- intger
- string

Algorithm:
- create constants to track hours, minutes, total minutes in a day
- define a new method and pass in an integer as an argument
- first, determine the number of hours and minutes for the total minutes passed in as argument
- output the number of hours and minutes formatting it as 00:00 in strings

Code:
'''

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
TOTAL_MINUTES_IN_DAY = HOURS * MINUTES

def time_of_day(mins)
  day, minutes = mins.divmod(TOTAL_MINUTES_IN_DAY)
  hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
  sprintf("%02d:%02d", hours, minutes)
end

# After Midnight(Part 2)

'''
Problem:
- input: string 
  - format in hours and minutes
  - could be time before midnight or after midnight

- output: integer
  - time == '00:00' then 0
  - time == '24:00' then 0

Examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

Data Structure:
- string
- intger

Algorithm:
- initialize constants to track hours, minutes and day in minutes
- define two methods to track after and before midnight and pass in a string argument
- split the string into an array with two elements
- convert the elements into an integer and sum up the number of minutes for hours and minutes
- to find after midnight sum the total minutes in the array by calculating hours * minutes + minutes
  - before midnight -> define a new method
  - substract the after midnight minutes from the total minutes

Code:
'''

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
TOTAL_MINUTES_IN_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def before_midnight(string_minutes)
  hours, minutes = string_minutes.split(':').map.to_i
  total_minutes = (hours * MINUTES_PER_HOUR) + minutes
  return 0 unless TOTAL_MINUTES_IN_DAY - total_minutes != 1440 
  TOTAL_MINUTES_IN_DAY - total_minutes
end

# unless: return 0 except on the condition (except if) that the calculation does not equal 1440

def after_midnight(string_minutes)
  return 0 if TOTAL_MINUTES_IN_DAY - before_midnight(string_minutes) == 1440
  TOTAL_MINUTES_IN_DAY - before_midnight(string_minutes)
end

# Letter Swap

'''
Problem:
- input: string
  - at least one charcter 
  - non-alphanumeric? 

- output: string
  - first and last letter of each word is swapped

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

Data Structure:
- string
- array

Algorithm:
- define a method called swap and pass in a string as argument
- split the argument into an array of characters by the space between the words
- iterate through the array using map and swap the first and last element using index subsetting
- join the words together and return 

Code:
'''

def swap(string)
  result = string.split.each do |char|
    char[0], char[-1] = char[-1], char[0]
  end
  result.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Clean up the words

'''
Problem:
- input: string
  - consists of characters other than the alphabet
  - all lower case letters / what about uppercase letters

- output: string
  - other then alphabet remove
  - if there is more than one space between words remove

Examples:
cleanup("---whats my +*& line?") ==  what s my line 

Data Structure:
- string
- array

Algorithm:
- define a method called cleanup and pass in one string as an argument
- split the strings into a characters to form an array of characters
- initalize a variable referencing an empty string
- iterate through the array and push each character into the array unless previous character is the same
- squeeze all spaces in the returned string

Code:
'''

def cleanup(str)
  result = ''
  str.split('').each_with_index do |char, idx|
    if /[a-z]/.match(char)
      result << char
    else
      result << ' '
    end
  end
  result.squeeze(' ')
end

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

#gsub: substitute anything other than the alphabets (both upper and lower using 'i')
# => and then squeeze all the characters that have more than one space 

cleanup("---what's my +*& line?") == ' what s my line '

# Letter Counter (Part 2)

'''
Problem:
- input: string
  - alphabets
  - different case levels
  - empty string and other symbols can be included
  - any string of characters that do not include a space

- output: hash
  - key: length of the word
  - value: frequency of the lentgh
'''
Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
'''
Data Structure:
- string
- hash

Algorithm:
- define a new method called word_sizes and pass in a string as an argument
- initialize an empty array with values set to 0
- split the words into an array and iterate throught the array
- for each word size add 1 to the hash
- return the hash

Code:
'''

def word_sizes(str)
  frequency = Hash.new(0)
  str.split.each do |word|
    frequency[word.size] += 1
  end
  frequency
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# Letter Counter Part 2

'''
Algorithm:
- delete characters that are non-letters
- pass in word_sizes method and get the result
'''

def word_sizes(str)
  frequency = Hash.new(0)
  str.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    frequency[clean_word.size] += 1
  end
  frequency
end

# Alphabetical Numbers

'''
Problem:
- input: array
  - elements are numbers all greater than or equal to zero
- output: array
  - numbers in alphabetical order but using integers

Examples:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

Data Structure:
- array

Algorithm:
- initialize a constant to reference the 0-9 in string format
- define a new method called alphabetic_number_sort and pass in an array of integers
- iterate through the array using sort_by and sort each character by the index character of the constant
- return the array generated by the sort_by

Code:
'''

ALPHABET = [
  'zero', 'one', 'two', 'three', 'four', 'five', 'six',
  'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
  'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen',
  'eighteen', 'nineteen'
]

def alphabetic_number_sort(arr)
  arr.sort_by { |number| ALPHABET[number] }
end

def alphabetic_number_sort(arr)
  arr.sort { |a, b| ALPHABET[a] <=> ALPHABET[b] }
end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# ddaaiillyy ddoouubbllee

'''
Problem:
- input: string
  - strings with multiple characters being the same
- output: string
  - clean string with just 1 character for each element 

- do not use string#squeeze and string#squeeze!

Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Data Structure:
- strings
- array

Algorithm:
- define new method called crunch with string as integer
- convert string into individual characters in an array
- iterate through the array using each and skip if previous charcter is the same
- join the strings and return the string

Code
'''

def crunch(str)
  result = []
  str.chars.each do |char|
    result << char unless result.last == char
  end
  result.join('')
end




