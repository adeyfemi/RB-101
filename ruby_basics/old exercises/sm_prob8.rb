#Sum of Sums

#input: integer
#output: sum of integers

#rules:
# => method that takes an array as args
# => returns sum of the sums of each leading subsequence for the array
# => assume array contains one number at least

# def sum_of_sums(array)
#   sum = 0
#   total = 0

#   array.each do |num|
#     sum += num
#     total += sum
#   end
#   total
# end

# sum_of_sums([3, 5, 2])

# #alternative solution
# def sum_of_sums(numbers)
#   sum_total = 0
#   1.upto(numbers.size) do |count|
#     sum_total += numbers.slice(0, count).reduce(:+)
#   end
#   sum_total
# end

#Madlibs
# print 'Enter a noun: '
# noun = gets.chomp

# print 'Enter a verb: '
# verb = gets.chomp

# print 'Enter an adjective: '
# adjective = gets.chomp

# print 'Enter an adverb: '
# adverb = gets.chomp

# sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
# sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
# sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

# puts [sentence_1, sentence_2, sentence_3].sample

#student solution
noun, verb, adj, adv = %w(noun verb adjective adverb).map.with_index do |word, idx|
                        print idx < 2 ? "Enter a #{word}: " : "Enter an #{word}: "
                        gets.chomp
                        end

puts "Do you #{verb} your #{adj} #{noun} #{adv}? That's hilarious!"

#another student solution
words = ["noun", "verb", "adjective", "adverb"]

words.each_with_index do |word, idx|
  print "Enter a #{word}: "
  words[idx] = gets.chomp
end


#Leading Substrings

#input: string
#output: string

#rules:
# => method that returns all substrings
# => that starts at the beginning of the original string
# => retun value should be arranged in order from shortest to longest substring

#algorithm
# => convert to an array and iterate 
# => select each item until all elements selected 

def leading_substrings(string)
  substring = []
  count = 0

  while count < string.size
    string.split.each_with_index do |char, idx|
      substring << string[idx..count]
      count += 1
    end
  end
  substring
end

#All Substrings
def substrings(string)
  solution = []
  for i in 0..string.size
    for j in i..string.size
      solution << string[i..j]
    end
  end
  solution
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

#Palindromic Strings

#input: strings
#output: array palindromic

#rules:
# method returns list of substrings that are palindromic
# each substring must be same forwards and backwards
# return value arranged in same sequence and duplicates should be reflected

#edge:
# consider all characters and asuume single characters are not palindromes

def palindromes(string)
  new_array = substrings(string)
  palindrome_array = []

  new_array.each do |char|
    if char.reverse == char && char.size > 1
      palindrome_array << char
    end
  end
  palindrome_array
end

# exercise solution

def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

#Fizzbuzz

#input: two integers as args
#output: list of integers and words

#rules:
# method takes two arguments - starting # and ending #
# print all numbers between the two numbers 
# if divisible by 3 'fizz' , divisible by 4 'buzz'
# divisible by 3 and 5 'fizzbuzz'

def fizzbuzz(num1, num2)
  results = []
  num1.upto(num2) do |num|
    if num % 3 == 0 && num % 5 == 0
      results << 'FizzBuzz'
    elsif num % 3 == 0
      results << 'Fizz'
    elsif num % 5 == 0
      results << 'Buzz'
    else
      results << num
    end
  end
  results
end

#exercise solution
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

#Double Char (Part 1)

#input: strings
#output: strings

#rules
# method that takes a string and returns a new string every character doubled

def repeater(string)
  string.chars.map {|char| char * 2 }.join
end

repeater('Hello')
repeater("Good job!")
repeater('')


#Double Char (Part 2)

#input: string
#output: string

#rules
# => method that takes a string
# => returns a new string in which every consonant is doubled

def double_consonants(string)
  result = string.chars.map do |char|
    if /[^AEIOUaeiou]/i =~ char
      char * 2
    else
      char
    end
  end
  result.join
end

double_consonants('String')

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

#Reverse the Digits in a number

#input: integer
#output: integer reversed

#rules
# => method takes an integer as argument and returns numbe with digits reversed

def reversed_number(num)
  num.to_s.reverse.to_i
end

#edge cases
# leading zeros
# decimals
# negative numbers
# zeros and one digit


#Get the middle character

#input: string
#output: string

#rules:
# => method takes non-empty string argument and returns middle character
# => if argument is odd, return one character, even length two characters

def center_of(string)
  length = string.size
  middle = (length / 2)

  if string.size == 1
    string
  elsif string.size % 2 != 0
    string[middle]
  else
    string[middle - 1] << string[middle]
  end
end





