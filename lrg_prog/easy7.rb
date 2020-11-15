# method combines two arrays passed in as arguments
# returns a new array that contains all elements from both arrays

def interleave(arr1, arr2)
  combined_array = []
  arr1.each_with_index{ |num, idx| combined_array << arr1[idx] << arr2[idx] }
  combined_array
end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

interleave([1, 2, 3], ['a', 'b', 'c'])

# write method that takes a string
# returns a hash that contains 3 enteries 

def letter_case_count(str)
  hash_group = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |char|
    if char =~ /['a-z']/
      hash_group[:lowercase] += 1
    elsif char =~ /['A-Z']/
      hash_group[:uppercase] += 1
    else
      hash_group[:neither] += 1
    end
  end
  hash_group
end

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

letter_case_count('abCdef 123')

# write method takes a string
# returns a new string that contains original value with every first char capitalized

def word_cap(str)
  str.split.map { |arr| arr.capitalize }.join(' ')
end

def word_cap(words)
  words.split.map(:&capitalize).join(' ')
end

#further exploration
def word_cap(str)
  str.split.map { |i| i[0].upcase << i[1..-1].downcase }.join(' ')
end

# method that takes a string
# returns new string in which every uppercase is lower and vice versa
# do not use String#swapcase

def swapcase(str)
  new_str = str.chars.map do |char|
    if char.upcase == char
      char.downcase
    elsif char.downcase == char
      char.upcase
    end
  end
  new_str.join
end


# method takes a string
# returns new string contains original value using staggered scheme
# chars not letters should not be changed

def staggered_case(str)
  new_str = []
  str.chars.each.with_index do |char, idx|
    if idx.even? && char =~ /['^A-Za-z']/i
      new_str << char.upcase
    else 
      new_str << char.downcase
    end
  end
  new_str.join
end

# solution
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

# part 2

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

def staggered_case2(string)
  count = -1
  alphabet = ("a".."z").to_a + ("A".."Z").to_a
  string.chars.map do |char|
    if alphabet.include?(char)
      count += 1
      count.even? ? char.upcase : char.downcase
    else
      char
    end
  end.join('')
end

# two if statements nested / if character in the alphabet then make changes
# else just return the string

# method takes array
# multiplies all nunbers together and divides by size of the array
# print to 3 decimal places 

def show_multiplicative_average(arr)
  size = arr.size
  result = arr.inject(&:*) / size.to_f
  puts "The result is #{format("%.3f", result)}"
end

# less idomatic way
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end

# write method takes two arrays 
# returns array contains product of each pair of nmumbers that have same index

def multiply_list(arr1, arr2)
  count = 0
  new_arr = []

  until count == arr1.size
    arr1.each do |num|
      new_arr << num * arr2[count]
      count += 1
    end
  end
  new_arr
end

def multiply_list(arr1, arr2)
  arr1.map.with_index { |num, idx| num * arr2[idx] } 
end

# write method takes two arrays
# returns new array that contains product of every pair of numbers

def multiply_all_pairs(arr1, arr2)
  new_arr = arr1.map do |num|
    arr2.map do |char|
      num * char
    end
  end
  new_arr.flatten.sort
end

# more compact solution
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

# write a method that returns next to the last word in th string

def penultimate(str)
  array = str.split
  array[-2]
end





