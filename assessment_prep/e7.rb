#Combine Two Lists

#P - combine two arrays and take elements in alternation

#input:
# => two arrays

#output:
# => one array 

#rules:
# => elements must be taken in alternation
# => arrays are non-empty

def interleave(arr1, arr2)
  size = arr1.size
  result = []

  size.times do |i|
    result << arr1[i] << arr2[i]
  end
  result
end

interleave([1,2,3], ['a', 'b', 'c'])

#solution 2

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

interleave([1,2,3], ['a', 'b', 'c'])

#solution 3
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

#Letter Counter

#P - count the case letter in a string given 

#input:
# => string

#output:
# => hash 

#rules:
# => return a string with 3 enteries 

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(str)
  counter = {lowercase: 0, uppercase: 0, neither: 0}

  str.chars.each do |element|
    if UPPERCASE_CHARS.include?(element)
      counter[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(element)
      counter[:lowercase] += 1
    else
      counter[:neither] += 1
    end
  end

  counter
end

#solution 2

def letter_case_count(str)
  counter = Hash.new
  array = str.chars
  counter[:lowercase] = array.count { |element| element =~ /[a-z]/ }
  counter[:uppercase] = array.count { |element| element =~ /[A-Z]/ }
  counter[:neither] = array.count { |element| element =~ /[^A-Za-z]/ }
  counter
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

#Capitalize Words

#solution 1
def word_cap(str)
  str.split.map { |char| char.capitalize }.join(' ')
end

#solution 2
def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#Swap Case

#P - find a way to swap the case of each character

#input: string
#output: string

#rules: cannot use #swapcase

#solution 1
def swapcase(str)
  str.chars.map { |c| ('A'..'Z').to_a.include?(c) ? c.downcase : c.upcase }.join('')
end

#solution 2
def swapcase(str)
  result = str.chars.do |char|
  if char =~ /[a-z]/
    char.upcase
  elsif char =~ /[A-Z]/
    char.downcase
  else
    char
  end
end

result.join
end

# Staggered Caps (Part 1)

# => return a new string, characters not letters should not be changed

#solution 1
def staggered_case(str)
  result = str.chars.map.with_index do |char, idx|
    idx.even? ? char.upcase : char.downcase
    end
  end
  result.join
end

#solution 2

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

# Staggered Caps (part 2)
def staggered_case(str)
  result = ''
    need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase 
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

#need to walkthrough this question in depth

#Multiplicative Average

def show_multiplicative_average(arr)
  total = 1

  arr.each do |num|
    total *= num
  end

  average = (total.to_f / arr.size)
  "=> The result is #{format("%.03f", average)}"
end

#solution 2
def show_multiplicative_average(arr)
  average = arr.reduce(&:*).to_f / arr.size
  "=> The result is #{format("%.3f", average)}"
end

#Multiply Lists

def multiply_list(arr1, arr2)
  arr1.map.with_index { |num, idx| num * arr2[idx] }
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#solution 2

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |a, b| a * b }
end

#Multiply All Pairs

def multiply_all_pairs(arr1, arr2)
  result = arr1.map do |num|
    arr2.map do |element|
      num * element
    end
  end

  result.flatten.sort
end

#solution 2
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

#The End is Near But Not Here

#edge cases strings: strings with one word or no word
#edge cases for integers : 0, 1, -1
#edge cases for arrays : empty, single element, two or more arrays that need to work together

def penultimate(str)
  string_array = str.split
  string_array[-2]
end


