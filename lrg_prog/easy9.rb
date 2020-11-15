# method takes 2 arguments array and hash
# array contains 2 elements to product a name
# hash contains two keys 
# return a greeting using full name and title / occupation

def greetings(name, status)
  puts "Hello, #{name.join(' ')}! Nice to have a " + 
  "#{status[:title]} #{status[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

# combine elements in the array using join rather than subsetting the elements
# out of the array

# definition: double number is an even number of digits / left and right side the same
# method returns 2 times # provided as argument unless argument is double number

def twice(number)
  number_array = number.to_s
  center = number_array.size / 2
  left_side = number_array[0..center - 1]
  right_side = number_array[center..-1]
  if left_side == right_side
    number
  else
    number * 2
  end
end

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center-1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

twice(37)

# method takes a number that is positive
# return negative number 
# unless 0 then return 0

def negative(number)
  number.abs > 1 ? number : 0
end

def negative(number)
  number > 0 ? -number : number
end

# method that takes an integer argument
# returns an array of all integers between 1 and the argument

def sequence(num)
  1.upto(num).map { |num| num }
end

def sequence(num)
  (1..number).to_a
end

sequence(5)

# method that takes a string
# returns true if all alphabetric characters are uppercase

def uppercase?(str)
  string_array = str.chars
  string_array.all? { |char| char.upcase == char }
end

# alternative solution
def uppercase?(str)
  str == str.upcase
end

# method takes a string as argument
# returns an array contains every word / space and word length

def word_lengths(str)
  string_array.split.map { |char| "#{char} #{char.size}" }
end

word_lengths("cow sheep chicken")

# method takes first name and last
# returns a stirng that contains last name, comma, space and first name

def swap_name(str)
  string_array = str.split
  "#{string_array[1]}, #{string_array[0]}"
end

#alternative solution
def swap_name(str)
  str.split.reverse.join(', ')
end

def sequence(count, number)
  sum = 0
  total = []

  1.upto(count) do |num|
    sum += number
    total << sum
  end
  total
end

# alternative solution
def sequence(count, first)
  (1..count).map { |value| value * first }
end

# method determines the mean of three scores
# returns the letter value with grade

def get_grade(g1, g2, g3)
  result = (g1 + g2 + g3)/ 3
  
  case result
  when 90..100 then 'A' # read as when (90..100).include?(result)
  when 80..90 then 'B'
  when 70..80 then 'C'
  when 60..70 then 'D'
  else 'F'
  end
end

# method takes an array of fruits with quantities 
# return an array with correct number of each fruit

def buy_fruit(arr)
  arr.map { |fruit, quantity| [fruit] * quantity }.flatten
end

# long form alternative solution
def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end


