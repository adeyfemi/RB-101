# write method takes an array of numbers
# returns the sum of sums of each leading subsequence for the array

def sum_of_sums(arr)
  sum = 0
  total = 0

  arr.each do |num|
    sum += num
    total += sum
  end
  total
end

sum_of_sums([3, 5, 2])

# alternative
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

# create a mad-lib program prompts for noun, verb, adverb and adjective

words = ['noun', 'verb', 'adjective', 'adverb']

words.each_with_index do |char, idx|
  puts "Enter a #{char}"
  words[idx] = gets.chomp
end

puts "Do you #{words[1]} your #{words[2]} #{words[0]} #{words[3]} That's Hilarious!"

# method returns list of all substrings of a string
# return value should be arraged in order 

def leading_substrings(str)
  str_array = str.chars
  new_string = ''
  new_arr = []

  str_array.each do |char|
    new_string += char
    new_arr << new_string
  end
  new_arr
end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

# method that returns a list of all substrings of a string
# returned list should be ordered by where in the string the substring begins

def substrings(str)
  results = []
  (0..str.size).each do |start_index|
    this_substring = str[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

# method that returns all substrings of a string that palindromic
# return value arranged in same sequence as substrings in string

def palindromes(str)
  result = []
  array = substrings(str)
  array.each do |char|
    result << char if char.reverse == char && char.size > 1
  end
  result
end

# method takes two arguments (first number starting, 2nd ending)
# print out all numbers except if a number is divisible by 3

def fizzbuzz(num1, num2)
  arr = num1.upto(num2).map do |num|
    if num % 3 == 0 && num % 5 == 0
      'Fizzbuzz'
    elsif num % 5 == 0
      'Buzz'
    elsif num % 3 == 0
      'Fizz'
    else
      num
    end
  end
  arr.join(', ')
end

# method that takes a string and returns a new string
# every character is doubled

def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

# method takes a string
# returns a new sring in which every consonant is doubled
# vowels and whitespace not doubled

VOWELS = %w(a e i o u)
CONSONANTS = %w(B C D F G H J K L M N P Q R S T V W X Z)

def double_consonants(str)
  new_str = str.chars.map do |char|
    if VOWELS.include?(char) 
      char
    elsif CONSONANTS.include?(char.upcase)
      char * 2
    else
      char
    end
  end
  new_str.join
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


double_consonants('String')
double_consonants("Hello-World!")
double_consonants("July 4th")
double_consonants('')


# write method that takes positive interger as argument 
# returns number with its digits reversed

def reversed_number(num)
  num.to_s.reverse.to_i
end


# method that takes nonempty string
# returns middle character or chars in the argument
# if argument has an even length return two chars

def center_of(str)
  count = str.size
  middle = count / 2
  count.odd? ? str[middle] : str[middle-1..middle]
end









