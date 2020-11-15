#Combine two lists

#input: two arrays
#output: one array

#rules:
# => method that combines two arrays passed as arguments
# => returns a new array that contains all elements in alternation
# => assume input arrays are non-empty and same number of elements

#algorithm:


def interleave(arr1, arr2)
  combo_arr = []
  array_size = (arr1+arr2).size / arr1.size

  0.upto(array_size) do |num|
    combo_arr << arr1[num] << arr2[num]
  end
  combo_arr
end

interleave([1, 2, 3], ['a', 'b', 'c'])

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

interleave([1, 2, 3], ['a', 'b', 'c'])

#Lettercase Counter

#input: string
#output: hash

#rules:
# => method takes a string and returns a hash 
# => 3 entries, lowercase, uppercase, neither

#algorithm:
# => populate the string into an array using chars
# => iterate through the array and identify case

def letter_case_count(strings)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  strings.chars.each do |element, hsh|
    if /[a-z]/.match(element)
      counts[:lowercase] += 1
    elsif /[A-Z]/.match(element)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

letter_case_count('abCdef 123')

#alternative solution

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

#Capitalize Words

#input: strings
#output: title strings

#rules:
# => method takes a string and returns a new string
# => string contains original value with first character capitalized
# => assume words are any sequence of non-blank characters

#algorithm

def word_cap(string)
  string.split.map { |char| char.downcase.capitalize }.join(' ')
end

word_cap('four score and seven')

#cannot join a string in a do/end block; join works on an array

#alternative solution

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

def word_cap(str)
  str.split.map { |i| i[0].upcase << i[1..-1].downcase }.join(' ')
end

#Swap Case
#input: string
#output: string camelCase

#rules:
# => method that takes a string and returns string
# => each upper case letter replaced by lower case 
# => cannot use #swapcase method

#algorithm:

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  swapped_word = string.chars.map do |char|
    if UPPERCASE.include?(char)
      char.downcase
    elsif LOWERCASE.include?(char)
      char.upcase
    else
      char
    end
  end
  swapped_word.join
end

swapcase('CamelCase') 
swapcase('Tonight on XYZ-TV')

#Staggered Caps (part 1)

#input: strings
#output: strings

#rules:
# method that takes a string and returns a new string using staggered capitalization
# every other character is capitalized and remaining characters lower case
# characters not letters should not be changed but count as charcters when switching

def staggered_case(string)
  upcase_string = string.upcase
  new_string = upcase_string.chars.map.with_index do |char, idx|
    if idx.even?
      char
    elsif idx.odd?
      char.downcase
    elsif char =~ /[^A-Za-z0-9]/
      char
    end
  end
  new_string.join
end

staggered_case('I Love Launch School!')

#Staggered Caps(part 1)

#rules:
# non-aplhabetic chars should be included but do not count when toggling desired case

def staggered_case(string)
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
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#Multiplicative Average

#input: integer array
#output: string result 

#rules:
# method takes an array of integers and multiplies together
# divides by number of entries int he array 
# print result to 3 decimal places
# assume array is non empty

def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{sprintf("%.3d", average)}"
end

#Multiply Lists

#input: two arrays
#output: one array 

def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end

multiply_list([3, 5, 7], [9, 10, 11])

#alternative solution
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_array| sub_array.reduce(:*) }
end

def multiply_list(arr1, arr2)
  arr1.each_with_index.map { |el, idx| el*arr2[idx] }
end

#Multiply all pairs

#input: two arrays
#output: one array

#rules:
# method that takes two arrays
# returns one new array contains product of every pair of numbers
# results sorted by increasing value

def multiply_all_pairs(arr1, arr2)
  new_array = arr1.map do |num|
    arr2.map do |item|
      num * item
    end
  end
  new_array.flatten.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2])

#alternative solution

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

#The end is near but not here

def penultimate(string)
  word_arr = string.split
  word_arr[-2]
end

penultimate('last word')

#edge cases
# =>  strings with just one word
# => strings with no words
# => selecting the middle word, what if it is odd? or even? 
# => should it count on backend of frontend of the count?













