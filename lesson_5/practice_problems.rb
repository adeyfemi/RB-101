# => Sorting, Nested Collections and Working with Blocks
# => example 1

# arr = ['10','11','9','7','8']

# arr.sort {|a,b| b.to_i <=> a.to_i}

# => Strings are compared character x character so, '11' will be less than '7'
# => In order to compare the strings as integers, convert to integers in the block
# => the second part of problem is soring the array in reverse order

# => example 2
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books.sort do |book|
#   book[:published].to_i
# end

#Alternative solution
# books.sort_by do |book|
#   book[:published]
# end

# => All values for :published are strings so we know that we can compare them
# => Since all values are four characters in length, in this case we can simply
# => compare the strings wihtout having to convert them to integers

# => example 3
# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# arr1[2][1][3]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# arr2[1][:third][0]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# arr3[2][:third][0][0]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# hsh1['b'][1]

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# hsh2[:third].key(0)

# => Hash#key method returns the key of an occurence of a given value
# => if more than one key has the same value the method returns the key
  # =>  for the first occurence of that value
# => If the requested value does not exist in the hash then nil is returned

# => example 4
# arr1 = [1, [2, 3], 4]
# arr1[1][1] = 4

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[2] = 4

# hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][2][0] = 4

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# hsh2[['a']][:a][2] = 4

# => example 5
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0
munsters.each_value do |details|
  total_male_age += details['age'] if details['gender'] == 'male'
end

p total_male_age


# => example 6
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, attributes|
  puts "#{name} is a #{attributes['age']}-year-old #{attributes['gender']}."
end

#Alternative Solution
munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']} year old #{details['gender']}"
end

# => example 7
a = 2
b = [5,8]
arr = [a,b]

arr[0] += 2
arr[1][0] -= a

# => Final values of a and b are 2 and [3,8]

# => the value of a didn't change because we are not referencing a at any point
# => This code arr[0] += 2 was modifying the array, arr not a
#in effect assigning a new object at that index of the array so that instead
# of the arr[0] containing a it now contains 4 - 
# the value of b did change because b is an array and we are modifying that array
# => by assigning a new value at index 0 of that array

# => example 8
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, value|
  value.join.chars.each do |string|
    puts string if 'aeiou'.include?(string)
  end
end

#Alternative Solution
vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end

#1. first iterate through the hash to access the values (the arrays) and then
#2. iterate through each array to access the string
# at this point String#chars can be called within the block to return an array 
# of characters for that string in that iteration, this array of characters can itself
# then be itereated through and puts called if on its iteration the character
#meets a condition (in this case that it is present in the vowels variable)

# => Hash#values could have been used since we only care about the 

# => example 9
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort {|a , b| b <=> a }
end

# => example 10
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |sub_hsh|
  incremented_hash = {}
  sub_hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

#map is iterating through the array
#on each iteration it is creating a new hash (incremented_hash) and then
# iterating through the hsh object for that iteration in order to add key-value pairs
# to this hash using the original keys but values incremented  by 1
# The outer block then returns this incremented_hash to map which uses it to transform each element

#Alternative Method
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end

#When deciding which method to use it is important to clearly understand the method implementation
#What arguments and blocks can be passed to it and its return value

# => exercise 11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.select do |num|
    num % 3 == 0
  end
end

#Alternative Solution
arr.map do |element|
  element.reject do |num|
    num % 3 != 0
  end
end

# => Returning a new array, map is a good choice to call on original array
# => select method is more readable but reject can also be used
# => Since the method rejects elements based on the truthiness of the evaluated condition

# => example 12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end

p hsh

# => Remember that any Ruby object can be a hash key and any Ruby object can be a hash value!!

# => example 13
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end

# => by performing selection on the sub-arrays that we are comparing, we can compare them
# => based on the value of the odd integers alone

# => example 14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

# objective is to return an array so map is a good method to call
# use a conditional statement because values being called depends on the fruit
#to call capitalize on the colors, you must iterate through the array

# => example 15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |sub_hsh|
  sub_hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

arr.map do |sub_hsh|
  sub_hsh.map do |_, value|
    value.select do |num|
      num.even?
    end
  end
end

# => example 16
def uuid
  "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx".gsub('x') do
    rand(32).to_s(32)
  end
end

#Alternative Solution
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end








  

























