#Medium Level Questions:
# => loop in a loop
# => loop and manipulate a string
# => 


#Longest Sentence

#P - find the longest sentence in a passage
#input: string
#output: string / integer

#explicit:
# => print the longest sentence based on the number of words
# => sentences may end in 3 different symbols
# => any sequence or chars not spaces or sentence ending chars = word
# => print the number of words in the longest sentence

#Algorithm:
# => read in the file
# => convert the string chars into an array
# => iterate through and sort the words based on the length
# => the last element should be the longest sentence

passage = File.read("passage.txt")

def longest_sentence(passage)
  long_sentence = passage.split(/\.|\?|!/).sort_by { |a| a.length } #returns an array
  puts "The longest sentence is: #{long_sentence[-1]}"
  puts "The length of the longest sentence is: #{long_sentence[-1].split.size}"
end

longest_sentence(passage)

passage = File.read("passage.txt")

def longest_sentence(passage)
  long_sentence = passage.split(/\.|\?|!/).max { |a, b| a.length ,=> b.length } #returns an array
  puts "The longest sentence is: #{long_sentence}"
  puts "The length of the longest sentence is: #{long_sentence.split.size}"
end

longest_sentence(passage)

#Now I know My ABCs

#P - determine whether each character includes the letter in the block

#input: string
#output: boolean
#questions:
# => is the argument only uppercase?
# => can you have upper and lower case in the argument?

#Data Structure: array

#Algorithm:
# => pass in argument
# => split the characters and iterate through the characters
# => 

BLOCKS = [['B','O'],['X','K'], ['D','Q'], ['C','P'], ['N','A'],
['G','T'], ['R','E'], ['F','S'], ['J','W'], ['H','U'],
['V','I'], ['L','Y'], ['Z','M']]

def block_word?(string)
  result = []
  string.upcase.split('').each do |char|
    BLOCKS.each { |block| result << block if block.include?(char) }
  end
  result == result.uniq
end

#solution 2
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

#Letter Percentage Ratio 

#P - return a hash with the percentages in the value

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_count(string)
  return_hash = {lowercase: 0, uppercase: 0, neither: 0 }
  string.split('').each do |char|
    if UPPERCASE.include?(char)
      return_hash[:uppercase] += 1
    elsif LOWERCASE.include?(char)
      return_hash[:lowercase] += 1
    else
      return_hash[:neither] += 1
    end
  end

  return_hash
end

def letter_percentages(string)
  hsh = letter_count(string)
  total = hsh.values.sum
  hsh.transform_values {|val| (val.to_f / total.to_f) * 100 }
end

letter_percentages('abCdef 123')

#solution 2
def letter_percentages(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  percentages = { lowercase: [], uppercase: [], neither: [] }
  characters = string.chars
  length = string.length

  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end

#Matching Parentheses?

#P - determine if string properly balanced 

#input: string
#output: boolean

def balanced?(string)
  total = 0

  string.chars.each do |char|
    if char == '('
      total += 1
    elsif char == ')'
      total += -1
    end
    break if total < 0 # iteration stops if the right bracket shows up first
  end

  total == 0
end

#solution 2
def balanced?(str)
  str = str.delete '^()'
  while str.gsub!('()', ''); end
  str.empty?
end

balanced?('What (is) this?')

# Triangle Sides

#input: 3 integer arguments
#output: type of triangle in symbol form

def triangle(a1, a2, a3)
  triangle_array = [a1, a2, a3].sort!
  largest = triangle_array.max
  case
  when largest > triangle_array.reduce(:+) - largest, triangle_array.include?(0)
    :invlaid
  when a1 == a2 && a2 == a3
    :equilateral
  when a1 == a2 || a1 == a3 || a2 == a3
    :isosceles
  else
    :scalene
  end
end

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

#solution 2
# categorize triangle by number of different sides
TRIANGLES = {
    1 => :equilateral ,
    2 => :isosceles,
    3 => :scalene
}

def valid_triangle?(x, y, z)
    [x,y,z].sort[0..1].sum > [x,y,z].sort.last
end

def triangle(x, y, z)
    valid_triangle?(x, y, z) ? TRIANGLES[ [x, y, z].uniq.size ] : :invalid
end

#Tri - Angles
DEGREES = 180

def valid_triangle?(a1, a2, a3)
  [a1, a2, a3].sum == DEGREES && (a1 || a2 || a3) > 0
end 

def triangle(a1, a2, a3)
  array = [a1, a2, a3]
  tri_test = valid_triangle?(a1, a2, a3)
  if tri_test == false
    :invalid
  elsif valid_triangle?(a1,a2,a3) && array.include?(90)
    :right
  elsif valid_triangle?(a1,a2,a3) && (a1 || a2  || a3 ) < 90
    :acute
  elsif valid_triangle?(a1,a2,a3) && (a1 || a2  || a3 ) > 90
    :obtuse
  end
end

#solution 2
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

#Unlucky Days

require 'date'

def friday_13th(year)
  count = 0
  period = Date.new!(year, 1, 13)

  12.times do
    count += 1
    period = period.next_month
  end
  count
end

# Next Featured Number Higher than a Given Value

#P - find the next featured number

#input: integer
#output: integer

#rules:
# => featured number is an ODD number 
# => it is a multiple of 7
# => and digits occur exactly once
# => return value must be greater than the argument

#Data Structure:

#Algorithm

# => start the number at 7
# => iterate and count up the number of cycles
# => break if the number is greater than argument, and multiple is ODD

def featured(number)
  seven_multiple = 7
  count = 0

  loop do
    seven_multiple += 7
    count += 1
    break if seven_multiple.odd? && seven_multiple > number && 
    seven_multiple.to_s.chars.uniq.size == seven_multiple.to_s.size
  end

  if number < 9_999_999_999
    seven_multiple
  else
    puts "There is no possible number that fulfills those requirements"
  end
end 

#solution 2
def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

#Bubble Sort

#input: array
#output: array

def bubble_sort!(arr)
  n = arr.length
  loop do
    swapped = false
    1.upto(n - 1) do |num|
      next if arr[num - 1] <= arr[num]
      arr[num - 1], arr[num] = arr[num], arr[num - 1]
      swapped = true
    end
    break unless swapped
  end
  nil
end

#Sum Square - Square Sum

def sum_square(num)
  total = 0
  product = 0

  1.upto(num) { |i| total += i }
  product = total ** 2
  product
end

def square_sum(num)
  total = 0
  product = 0

  1.upto(num) do |n|
    total = n
    product += n ** 2
  end

  product
end

def sum_square_difference(num)
  sum_square(num) - square_sum(num)
end

sum_square_difference(3) == 22
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150



