#Short Long Short

#P - check the length of two strings and return in a new order

#input:
# => two strings arguments

#output:
# => new strings chained in a pattern

#rules:
# => must be short long short
# => empty strings allowed
# => alphanumerics? symbols?

#solution 1
def short_long_short(str1, str2)
  str1.size > str2.size ? "#{str2}#{str1}#{str2}" : "#{str1}#{str2}#{str1}"
end

#solution2
def short_long_short(str1, str2)
  arr = [str1, str2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end


short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

#What Century is That?

#P - find the century of a given year

#input:
# => integer

#output:
# => string

#rules:
# => return value should be a string that begins with the century number

#questions:
# => what happens with half years?
# => can the year be 0?

def century(year)
  century = year / 100
  century += 1 if year % 100 != 0
  century.to_s + suffix(century)
end

def suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10 

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

century(11201)
century(1965)

#Leap Year (Part 1)

#P - determine which years are a leap year

#input:
# => integer

#output:
# => boolean

#rules:
# => year is greater than 0 and return true if year is a leap year or false it not leap year
# => 

#solution 1
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else 
    year % 4 == 0
  end
end

# => why does the divisibility by 400 have to come first?
def leap_year?(year)
  if year % 4 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 400 == 0
    true
  end
end

#solution 2
def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end


#Leap years (part 2)
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

#Multiples of 3 and 5

#P - search for all numbers and sum the numbers that are multiples of 3 or 5

#input:
# => integer

#output:
# => integer

#rules:
# => only the multiples of 3 and 5 should be summed

def multisum(num)
  1.upto(num).select { |number| number % 3 == 0 || number % 5 == 0 }.sum
end

#why is this not looping properly? / can also use array and inject to complete the sum
def multisum(num)
  count = 1
  total = 0

  loop do
    if count % 3 == 0 || count % 5 == 0
      total += count
    end
    count += 1
    break if count > num #if count is set to reference 1, loop to be greater than num 
  end
  total
end

#Running Totals
def running_total(array)
  running_sum = 0
  total_array = []

  array.each do |num|
    running_sum += num
    total_array << running_sum
  end
  total_array
end

running_total([2, 5, 13])

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

#String to Integer

#P - method to turn strings into an integer
#input:
# => string
#output:
# => integer

#rules:
# => take a string of digits, and returns number as an integer
# => do not use built in methods

NUMBERS = {'0' => 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5,
           '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9}

def string_to_integer(str)
  total = 0
  str.chars.each { |char| total = (total * 10) + NUMBERS[char]}
  total
end

string_to_integer('4321')


def string_to_signed_integer(str)
  if str.include?('-')
    -string_to_integer(str[1..-1])
  elsif str.include?('+')
    string_to_integer(str[1..-1])
  else
    string_to_integer(str)
  end
end

#Convert Number to a String!
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(int)
  result = ''
  loop do
    int, remainder = int.divmod(10)
    result.prepend(DIGITS[remainder])
    break if int == 0
  end
  result
end

#Convert a Signed Number to a String!

def signed_integer_to_string(int)
  if int == 0
    integer_to_string(int)
  elsif int < 0
    '-' + integer_to_string(int.abs)
  else
    '+' + integer_to_string(int)
  end
end

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

#solution 3
def integer_to_string(int)
  int.digits.reverse.join
end

def signed_integer_to_string(int)
  operator = int < 0 ? '-' : int > 0 ? '+' : ''
  int = -int if int < 0
  operator + integer_to_string(int)
end

signed_integer_to_string(4321)

#solution 4
def integer_to_string(int)
  number_array = int.digits.reverse
  result = ''

  number_array.each do |number|
    result << NUMBERS.key(number)
  end
  result
end


