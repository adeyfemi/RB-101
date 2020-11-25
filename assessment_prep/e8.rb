# Sum of Sums

#input: array
#output: integer

#rules:
# => method takes an array and returns sum of sums 

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

#solution 2
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

#Madlibs

FIND = %w(noun verb adjective adverb)
hsh = {}

FIND.size.times do |count|
  puts "Enter #{FIND[count]}"
  answer = gets.chomp
  hsh[FIND[count].to_sym] = answer
end

sentence_1 = "Do you #{hsh[:verb]} your #{hsh[:adjective]} #{hsh[:noun]} #{hsh[:adverb]}? " +
"That's hilarious!"
sentence_2 = "Do you #{hsh[:adjective]} your #{hsh[:noun]} #{hsh[:verb]} #{hsh[:adverb]}? " +
"That's hilarious!"

puts [sentence_1, sentence_2].sample

#Leading Substrings

#input:
# => strings
#output:
# => array

#rules:
# => return all substrings of a string, ordered from short to long

def leading_substrings(string)
  0.upto(string.size - 1).map { |count| string[0..count] }
end

leading_substrings('abc')

#All substrings - good double loop question

def substrings(str)
  result = []
  0.upto(str.size) do |number|
    result[number] = leading_substrings(str[number..str.size])
  end

  result.flatten
end

#Palindromic Substrings

#input: string
#output: array of palindromic substring

#algorithm:
# => find the substrings
# => iterate and evaluate the strings for size and reverse

def palindromes(str)
  evaluated_words = substrings(str)
  evaluated_words.select { |char| char.size > 1 && char == char.reverse }
end

#Fizzbuzz

def fizbuzz(num1, num2)
  result = []

  num1.upto(num2) do |count|
    if count % 3 == 0 && count % 5 == 0
      result << "Fizzbuzz"
    elsif count % 3 == 0
      result << "Fizz"
    elsif count % 5 == 0
      result << "Buzz"
    else
      result << count
    end
  end

  result.join(', ')
end

fizbuzz(1, 15)


#Double Char (part 1)
def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

#Double Char (part 2)
CONSONANTS = %w( b c d f g h k l m n p q r s t v w x y z)

def double_consonants(str)
  str.chars.map { |char|  CONSONANTS.include?(char) ? char * 2 : char }.join
end

double_consonants('String')

# Reverse the Digits in Number
def reversed_number(number)
  number.to_s.reverse.to_i
end

#Get the Middle Character

def center_of(string)
  middle = string.size / 2
  string.size.odd? ? string[middle] : string[middle-1, 2]
end



