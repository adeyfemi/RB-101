#Short Long Short

#input: strings
#output: strings

#rules:
# => method that takes two strings as arguments
# => determines the longest of the two strings
# => returns the result of concatenating the shorter string, longer, short again
# => assume strings have different lengths

#algorithm:
# => pass two arguments into the method 
# => compare the strings using size or length to determine which string is longer
# => use conditionals to return the correct string

def short_long_short(string1, string2)
  if string1.size > string2.size
    "#{string2}#{string1}#{string2}"
  else
    "#{string1}#{string2}#{string1}"
  end
end

short_long_short('abc', 'defgh') == 'abcdefghabc'
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"


# What Century is That?

#input: integer
#output: string 

#rules:
# => a method that takes a year as input and returns the century
# return value should a string that begins with century number and ends with 
# => st, nd, rd, or th as appropriate

# => new centuries begin in years that end with 01

def century(year)
  century_array = year.divmod(100)
  century = century_array[1] != 0 ? century_array[0] + 1 : century_array[0]
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

#Leap Years

#input: integer
#output: boolean

#rules:
# => a method that takes any year > 0 and returns true if year is a leap year

# leap year definition:
# => year that is evenly divisible by 4, unless year is divisible by 100
# => year is evenly divisible by 100 only then not leap, unless evenly divisible by 400

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

leap_year?(2016)
leap_year?(2015)
leap_year?(2100)

#Leap year (part 2)

#input: integer
#output: boolean

#rules:
# => leap year occurs in any year that is evenly divisible by 4
# => 1752 is a leap year, prior to 1752 any year % 4 is a leap year

def leap_year?(year)
  if year <= 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

def leap_year?(year)
  (year <= 1752 && year % 4 == 0) || (year % 400 == 0) || 
  (year % 4 == 0 && year % 100 != 0)
end

leap_year?(2016)
leap_year?(2015)

# Multiples of 3 and 5

#input: integer
#output: integer

#rules:
# => method searches for all multiples of 3 and 5 between 1 and some number
# => computes the sum of those multiples

#algorithm:
# => use the #upto method to iterate through the argument 
# => select the items that are multiples of 3 and 5 
# sum the numbers returned by the select method

def multisum(num)
  total = 1.upto(num).select do |num|
    (num % 3 == 0 || num % 5 == 0)
  end
  total.reduce(:+)
end

multisum(3)
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

# Running Totals

#input: array 
#output: array

#rules:
# => method takes an array and returns an array with same number of elements
# => each element is the running total 

#algorithm:
# => 

def running_total(array)
  sum = 0
  array.map {|value| sum += value }
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

def running_total(arr)
  arr.map.with_index { |_, i| arr[0..i].inject(:+)}
end

def running_total(arr)
  arr.map.with_index { |_, i| arr[0..i].sum }
end

running_total([2, 5, 13]) == [2, 7, 20]

#Covert a String to a Number

#input: string
#output: integer

#rules:
# => method takes a string of digits and returns number as integer
# => cannot use string#to_i and Integer()

NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 6, '7' => 7, '8' => 8, '9' => 9,
}

def string_to_integer(string)
  num_arr = string.chars.map do |char|
    char = NUMBERS[char]
  end

  value = 0
  num_arr.each do |num|
    value = 10 * value + num 
  end
  value
end

string_to_integer('4321')

# Convert String to a Signed Number

#input: string
#output: integer

#rules:
# method that takes a string of digits and returns number as integer
# string may include +/- sign
# if + sign return a positive number
# if - sign return a negative number

NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  num_arr = string.chars.map do |char|
    char = NUMBERS[char]
  end

  value = 0
  num_arr.each do |num|
    value = 10 * value + num 
  end
  value
end

def repeating_symbol(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else string_to_integer(string)
  end
end

def string_to_signed_integer(string)
  repeating_symbol(string)
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

def string_to_signed_integer(string)
  if string.include?('+')
    string_to_integer(string[1..-1])
  elsif string.include?('-')
    -string_to_integer(string[1..-1])
  else
    string_to_integer(string)
  end
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100


# Convert a Number to a String

NUMBERS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  string_number = num.digits.reverse.map do |num|
    num = NUMBERS[num]
  end
  string_number.join
end

def integer_to_string(int)
  int.digits.reverse.join('')
end 

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

def integer_to_string(int)
  int.digits.reverse.join('')
end 

def signed_integer_to_string(int)
  if int > 0
    '+' << integer_to_string(int)
  elsif int < 0
    '-' << integer_to_string(int * -1)
  else
    integer_to_string(int)
  end
end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

#string interpolatiopn
#string concatenation
#string push or << 

def signed_integer_to_string(number)
  stringed = integer_to_string(number.abs)
  number < 0 ? '-' + stringed : number > 0 ? '+' + stringed : stringed
end









