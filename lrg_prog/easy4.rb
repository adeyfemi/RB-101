# write a method that takes two strings as arguments
# determines the longest of the two strings
# returns the result of concatenating the shorter string, long, then short

def short_long_short(str1, str2)
  return "#{str1}#{str2}#{str1}" if str1.length < str2.length
  return "#{str2}#{str1}#{str2}" if str2.length < str1.length
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end

# write a method that takes a year as input and returns the century
# the return value should be a string that begins with the century number
# ends with st, nd, rd, or th 

# new centuries begin in years that end with 01
def century(year)
  result = year.divmod(100)
  century = result[0] + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if %w(11 12 13).include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

century(2000)
century(2001)


# write a method that takes any year greater than 0 as input
# returns true if the year is a leap year, or flase if it is not a leap year

# leap year = evenly divisible by 4 unless also divisible by 100
# evenly divisible by 100 unless evenly divisible by 400

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else 
    year % 4 == 0
  end
end

leap_year?(2016) == true

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

# determine the year both before and after 1752 that is a leap year
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

leap_year?(2016) 
leap_year?(2015)


# write a method that searches all multiples of 3 or 5 
# computes the sum of those multiples

def multisum(num)
  sum = 0
  1.upto(num) {|number| sum += number if (number % 3 == 0 || number % 5 == 0)}
  sum
end

def multisum(number)
  1.upto(number).reduce(0) do |sum, num| 
    (num % 3 == 0 || num % 5 == 0) ? (sum + num) : (sum)
  end
end

def multisum(n)
  (1..n).select{ |i| i % 3 == 0 || i % 5 == 0 }.sum
end

# write a method that takes an array of numbers
# returns an array with he same number of elements
# each element has the running total of original array

def running_total(array)
  new_array = []
  sum = 0
  count = 0

  while count < array.size
    array.each do |num|
      sum += num
      new_array << sum
      count += 1
    end
  end
  new_array
end

def running_total(array)
  sum = 0
  array.map { |num| sum += num }
end

def running_total(array)
  sum = 0
  array.each_with_object([]) { |num, array| array << sum += num }
end

# write a method that takes a string of digits and returns the appropriate 
# number as an integer - certain methods not allowed

NUMBERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4'=> 4, '5' => 5, 
  '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string_num)
  string_array = string_num.chars
  number_array = []
  string_array.each { |char| number_array << NUMBERS[char] }
  end
  number_array

  total = 0
  number_array.each { |num| total = (total * 10) + num }
  total
end

string_to_integer('4321')

# refactored
def string_to_integer(string_num)
  number_array = string_num.chars.map {|char| NUMBERS[char] }

  total = 0
  number_array.each {|num| total = (10 * total) + num }
  total
end

def string_to_signed_integer(string_num)
  if string_num.include?('-')  
    -string_to_integer(string_num[1..-1])
  elsif string_num.include?('+')
    string_to_integer(string_num[1..-1])
  else
    string_to_integer(string_num)
  end
end 

#alternative
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

# convert integer to string
NUMBERS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 
  6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(number)
  string_array = number.digits.reverse

  stringy_number = ''
  string_array.each { |char| stringy_number << NUMBERS[char] }
  stringy_number
end

def signed_integer_to_string(number)
  case
  when number > 0
    "+#{integer_to_string(number)}"
  when number < 0
    "-#{integer_to_string(number * -1)}"
  else
    integer_to_string(number)
  end
end

signed_integer_to_string(4321)
