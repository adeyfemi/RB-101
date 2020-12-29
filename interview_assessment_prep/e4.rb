# Short Long Short

'''
Problem:
- input: string
  - could be any type of string argument including an empty string
- output: concatenated string
  - short + long + short

Examples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

Data Structure:
- string
- array

Algorithm:
- define a method called short_long_short and pass in two string arguments
- place the two strings in an array and sort based on length of the strings
- output the two strings using string interpolation

Code:
- could use a if/else statement 
'''

def short_long_short(str1, str2)
  sorted_list = [str1, str2].sort_by {|char| char.length }
  "#{sorted_list[0]}#{sorted_list[1]}#{sorted_list[0]}"
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

# What Century is That?

'''
Problem:
- input: integer
  - current year in the century
- output: string
  - the century plus a suffix appended

Examples:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

0 - th
1 - st
2 - nd
3 - rd
4, 5, 6, 7, 8, 9 - th
11, 12, 13 - th

Data Structure:
- integer
- array 

Algorithm:
- define a method called century and pass in one integer argument (year)
- initialize a variable called century to calculate the current century
- determine if century has a remainder and if it does add 1 more to century
- return the century by calling puts and add a suffix to the end to return the correct century in string format

- define another method called suffix and pass in one integer argument
- initialize a variable that references the return value of the century method
- initialize a new variable that references the remainder at the 10th place value 
- case the return of this variable and write out the logic of the suffix for the right place value
- return the correct suffix for each number in the case argument
  - need to figure out how to handle [11, 12, 13]
  - force a return value when the method determines that century has these numbers?

Code:
- multiple methods
- how to combine strings and integers
'''

def century(year)
  current_century = year / 100
  current_century += 1 unless year % 100 == 0
  current_century.to_s + century_suffix(current_century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

# Leap Years (Part 1)

'''
Problem:
- input: integer
  - input is the year and method will be testing whether it is a leap year
  - leap year: occurs in every year that is:
    - evenly divisible by 4 unless also divisible by 100
    - evenly divisible by 100, not a leap year unless also divisible by 400
- year will be greater than 0

- output: boolean
  - true if the year is a leap year, false otherwise

Examples:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

Data Structure:
- integer
- boolean

Algorithm:
- define a method called leap_year? and pass in one integer argument
- if argument is evenly divisible by 400 then it is a leap year
- if argument is evenly divisible by 100 then it is not a leap year
- if argument is evenly divisible by 4 then it is a leap year

Code:
'''

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else 
    year % 4 == 0
  end
end

leap_year?(2015)

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

# Leap Years (Part 2)

'''
Problem:
- determine leap years both before and after 1752
'''

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

# Multiples of 3 and 5

'''
Problem:
- input: integer
  - number is greater than 1
- output: integer
  - sum of all multiples of 3 or 5
  - no repititons in the multiples chosen
  sum includes the number passed in as an integer if it is a multiple of 3 or 5

Examples:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

number = 20 / total = 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)

Data Structure:
- integer
- array / find unique items

Algorithm:
- define a method called multisum and pass in one integer argument
- initialize a new empty array and reference through a variable
- call the upto method and iterate through the 1..number 
  - push each number than is a multiple of 3 or 5 that lie between the number
- call uniq on the array and sum the numbers in the array

Code:
'''

def multisum(number)
  number_array = []

  1.upto(number) do |num|
    number_array << num if num % 3 == 0 || num % 5 == 0
  end

  number_array.sum
end

# Running Totals

'''
Problem:
- input: array of integer elements
  - array can be empty or have just one element in it
- output: array of integer elements
  - running total of the array passed in as an argument

Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

first index - first number
second index - first + second number
third index - first ...n

Data Structure:
- array

Algorithm:
- define a method called running_total and pass in an array of integer elements
- initialize a new variable that references an empty array
- iterate through the array by calling the map method with index
- for each iteration push the sum of the array into the new array
- return the new array

Code:
'''

def running_total(arr)
  arr.map.with_index { |_, idx| arr[0..idx].sum }
end

# more idiomatic
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# Convert a String to a Number!

'''
Problem:
- input: string
  - integer string made up of numbers and no signs
  - number is positive and no need to validate
- ouput: integer
  - return a copy of the string in same order but as an integer

- cannot use Ruby built in methods to create the integer number

Examples:
string_to_integer('4321') == 4321
string_to_integer('570') == 570

Data Structure:
- integer
- string

Algorithm:
- intialize a constant referencing digits from 0-9
- define a method called string_to_integer and pass in a string argument
- intialize a new variable and set it to 0
- call the method 'chars' on the string and iterate through each number
  - for each number, convert to the value in the constant 
  - multiply the variable by 10 and add the value selected from the constant
- return the value of the string argument in integer form

Code:
'''

DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(str)
  number = 0
  str.chars.each do |num|
    number = (number * 10) + DIGITS[num]
  end
  number
end

# Convert a String to Signed Number!

'''
Problem:
- input: string
  - some strings have a '-' or '+' sign
- output: integer
  - if '-' is included then include as part of the return number

Examples:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

Data Structure:
- string
- integer
- array

Algorithm:
- use the process in the convert string to number method
- delete any signs from the string 
- iterate through the numbers by calling chars and each 
- if the string includes a '-' symbol then prepend else return the number

Code:
'''

DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_signed_integer(str)
  clean_string = str.delete('^0-9')
  number = string_to_integer(clean_string)
  str.include?('-') ? -number : number
end

# alternate solution - LS
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1]) # negative sign prepended to the number
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

# Convert a Number to a String

'''
Problem:
- input: integer 
  - greater than or equal to 0 --> coult it include negative numbers?
- output: string
  - no signs included in the string

Examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

Data Structure:
- integer
- string
- array

Algorithm:
- initialize a constant set to reference an array of digits 0-9 in string formate
- define a method called integer_to_string and pass in one integer argument
- call the method digits and then call reverse to get an array of integers
- iterate through the array using map and for each index element return the number in the constant
- join the strings and return the value

Code:
'''

COME BACK TO THIS QUESTION!!!

DIGITS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(num)
  number_array = num.digits.reverse
  number_array.map { |number| DIGITS[number] }.join
end

# Convert a Signed Number to a String!
def signed_integer_to_string(number)
  if number > 0
    "+#{integer_to_string(number)}"
  elsif number < 0
    "-#{integer_to_string(number)}"
  else
    integer_to_string(number)
  end
end

#alternate solution
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end
