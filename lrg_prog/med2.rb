# longest sentence
# output longest sentence and number of words 

def longest_sentence(file_data)
  file_data = File.read("passage.txt")
  sentences = file_data.split(/\.|\?|!/).max { |a, b| a.length <=> b.length }
  puts "#{sentences}"
  puts "#{sentences.split.size}"
end

longest_sentence('')

# lyric counter
def word_frequency(file)
  word_hsh = Hash.new(0)
  file = File.read("can_i_live.txt")
  line_lyrics = file.split(' ').each { |word| word_hsh[word] += 1 }
  word_hsh
  word_hsh.select { |k, v| v >= 5 }
end

word_frequency('')

# write a method that returns true if the word passed in an argument/fasle otherwise
# each block can only be used once

BLOCK = {"B"=>"O", "X"=>"K", 
  "D"=>"Q", "C"=>"P", "N"=>"A", "G"=>"T", 
  "R"=>"E", "F"=>"S", "J"=>"W", "H"=>"U", 
  "V"=>"I", "L"=>"Y", "Z"=>"M" }

def block_word?(string)
  string.upcase!
  BLOCK.none? { |k, v| string.include?(k) && string.include?(v) }
end

BLOCKS = [
  ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
  ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'],
  ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'],
  ['Z', 'M']
]

def block_word?(str)
  blocks_used = []
  str.upcase.chars.each do |chr|
    BLOCKS.each { |block| blocks_used << block if block.include?(chr) }
  end

  blocks_used == blocks_used.uniq
end


def letter_counter(str)
  new_hsh = Hash.new(0)
  str.chars.each do |char|
    if /[a-z]/.match(char)
      new_hsh[:lowercase] += 1
    elsif /[A-Z]/.match(char)
      new_hsh[:uppercase] += 1
    elsif
      new_hsh[:neither] += 1
    end
  end
  new_hsh
end

def letter_percentages(str)
  total = letter_counter(str).values.sum
  counter_hsh = letter_counter(str)
  counter_hsh.each do |key, value|
    counter_hsh[key] = (counter_hsh[key] / total.to_f) * 100
  end
  counter_hsh
end

letter_percentages('abCdef 123')


# method takes a string as argument 
# returns true if all parentheses are balanced and false otherwised
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 0 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

# method takes lengths of 3 sides of a triangle as arguments
# returns a symbol depending on type of triangle
def triangle(s1, s2, s3)
  sides = [s1, s2, s3]
  longest_side = sides.max

  case
  when largest_side > sides.reduce(:+) - largest_side, sides.include?(0)
    :invalid
  when s1 == s2 && s2 == s3
    :equilateral
  when s1 == s2 || s1 == s3 || s2 == s3
    :issoceles
  else
    :scalene
  end
end

def triangle(a1, a2, a3)
  degrees = [a1, a2, a3]
  total_degrees = degrees.sum

  case 
  when total_degrees != 180 || degrees.include?(0)
    :invalid
  when degrees.max < 90 && total_degrees == 180
    :acute
  when degrees.include?(90) && total_degrees == 180
    :right
  else 
    :obtuse
  end
end

# method that returns the number of Friday the 13ths

require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteeth = Date.new!(year, 1, 13)

  12.times do # to iterate through the number of months
    unlucky_count += 1 if thirteeth.friday? # increment if the month has a friday_13th
    thirtheen = thirtheen.next_month
  end
  unlucky_count
end

friday_13th(2015)

# method takes an integer and returns featured number greater than argument
# issue error message if no feature number

# featured number = odd number that is a multiple of 7, digits occur exactly once each

def featured(num)
  number = 0

  loop do
    if num % 7 != 0 && num.even?
      number += 7 
    elsif num % 7 != 0 && num.odd?
      number += 7
    else
      number += 7
    end
      break if number % 7 == 0 && number > num && number.odd?
  end
end

featured(12)

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    numbers_chars = number.to_s.split('')
    return number if numbers_chars.uniq == numbers_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

# bubble sort
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

# method that computes the difference between
# the square of the sum of the first n positive integers and the
# sum of the squares of the first n positive integers

def sum_square_difference(num)
  square_of_the_sum = 0
  sum_of_the_squares = 0
  
  1.upto(num) do |num|
    square_of_the_sum += num
    sum_of_the_squares += (num ** 2)
  end

  total = (square_of_the_sum ** 2) - sum_of_the_squares
  total
end


sum_square_difference(3)












