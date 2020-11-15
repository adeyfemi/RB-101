#Welcome Stranger
def greetings(name, status)
  greet = name.join(' ')
  trade = "#{status[:title]} #{status[:occupation]}"
  "Hello, #{greet}! Nice to have a #{trade} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

#Double Doubles

#input: integer
#output: integer

#definition: double # - # with even digits, leftside digits are same as right side

#rules:
# => method retuns 2 times the number as argument
# => unless argument is double number, double numbers should be returned as is

def twice(num)
  num_str = num.to_s
  half = num_str.size / 2
  left_side = half.zero? ? '' : num_str[0..half - 1]
  right_side = num_str[half..-1]
  return num if left_side == right_side
  return num * 2
end

twice(37)
twice(44)

def twice(num)
  num_str = num.to_s
  middle = num_str.length / 2
  num_str[0..middle] == num_str[middle..-1] ? num : num * 2
end

twice(37)

#edge case
# for single digit numbers, center is calculated as 0.
# if attention not paid to edge case, end up setting both to left_side and right_side to
# => num_str[0..-1]

#Always Return Negative

#input: integer
#output: negative integer or zero if zero

#rules:
# method that takes a number as argument
# if argument is positive, return negative of the number
# if number is 0 or negative return original number

def negative(int)
  if int > 0
    int * -1
  elsif int < 0
    int
  else
    0
  end
end

negative(5)

#alternative

def negative(number)
  number > 0 ? -number : number
end

#shorter and conceptual solution
def negative(number)
  -number.abs
end

#Counting Up

#input: integer
#output: array

#rules:
# method that returns an array fof all integers btw 1 and args
# assume args is greater than 0

def sequence(number)
  1.upto(number).map { |num| num}
end

sequence(5)


#Uppercase Check

#input: string
#output: boolean

#rules:
# method returns true if all alphabetic chars are uppercase
# false otherwise / chars not alphabetic should be ignored

def uppercase?(string)
  string == string.upcase
end

uppercase?('t') == false

# recognize that the condition 'all alphabetic chars are uppercase' is true
#only if string is not altered by converting to all uppercase

#How long are you?

#input: string
#output: array of strings

#rules:
# method takes a string as arg, returns an array that contains every word of string
# append a space and word length
# assume words separated by exactly one space and any substring of non-space chars is
# a word


#algorithm
# convert string to an array
# iterate through and push elements into a hash with value referencing element size
# convert to an array

def word_lengths(string)
  combined_arr = string.split.each_with_object([]) do |item, arr|
    arr << "#{item} #{item.size.to_s}"
  end
  combined_arr
end

word_lengths("cow sheep chicken")


#Name Swapping

#input: string
#output: string

#rules:
# method takes first name and last name 
# returns string contains last name, first name

def swap_name(full_name)
  full_name.split.reverse.join(', ')
end

swap_name('Joe Roberts')

#Sequence Count

#input: two integers
#output: array of integers

#rules:
# method takes two integers as arguments
# first = count, second = first num in sequence
# return array contains same number of elements as count and values multiples of starting num

def sequence(count, start)
  result = []

  1.upto(count) do |num|
    result << start * num
  end
  result
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

# alternative solution

def sequence(count, first)
  (1..count).map { |value| value * first }
end

def sequence(count, first)
  sequence = []
  number = first

  count.times do
    sequence << number
    number += first
  end

  sequence
end

#Grade Book

#input: integers
#output: letter grade

#rules:
# method determines average and returns letter value associated with grade

def get_grade(num1, num2, num3)
  total = num1 + num2 + num3
  average = total / 3

  case average
  when 90..100
   'A'
  when 80..90
   'B'
  when 70..80
   'C'
  when 60..70
   'D'
  else
   'F'
  end
end

get_grade(95, 90, 93)

#execise solution
def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

#Further Exploration
def get_grade(num1, num2, num3)
  average = ((num1 + num2 + num3) / 3)

  case average
  #Further exploration
  when 100..Float::INFINITY then 'A++++'
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

# ruby will not read past the when statement that evaluates to true

#Grocery List

#input: nested array
#output: array

#rules:
# method that takes grocerry list of fruits and quantities 
# covert to an array of correct number of each fruit

def buy_fruit(array)
  array.map { |item, quantity| [item] * quantity }.flatten
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit}
  end
  expanded_list
end


def buy_fruit(array)
  array.map { |item| [item[0]] * item[1] }.flatten
end

#this is recognizing that the fruit will be in an array [item[0]] * quantity of fruit