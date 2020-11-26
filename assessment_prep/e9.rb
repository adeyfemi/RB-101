#Welcome Stranger

#input: array, hash
#output: string

#rules: return a greeting using elements in the data structures

def greetings(arr, hsh)
  "=> Hello, #{arr.join(' ')}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })


#Double Doubles

#input: integer
#output: integer

#rules:
# => double number is a number w/ an even number of digits - left side == same digits right side
# => returns 2 times the number provbided if not double number

def slice(int)
  array_numbers = int.digits.reverse
  middle = array_numbers.size / 2
  left_side = array_numbers[0..middle - 1]
  right_side = array_numbers[middle..-1]
  left_side == right_side
end

def twice(int)
  if int.digits.size == 1
    int * 2
  elsif slice(int) == true
    int
  else
    int * 2
  end
end

twice(103103)

#solution 2

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end


#Always Return Negative

#input: integer
#output: integer < 0 unless 0

#rules: if argument positive, return negative, 0 or negative return number

def negative(int)
  int > 0 ? -int : int
end

#Counting Up

def sequence(int)
  1.upto(int).map { |num| num }
end

#solution 2
def sequence(number)
  (1..number).to_a
end

#Uppercase Check
def uppercase?(str)
  str.split.all? { |char| char == char.upcase }
end

#How long are you?

def word_lengths(str)
  str.split.map { |char| "#{char} #{char.size}" }
end

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []


#Name Swapping
def swap_name(str)
  name_array = str.split
  "#{name_array[1]} #{name_array[0]}"
end

#solution 2
def swap_name(name)
  name.split(' ').reverse.join(', ')
end

#Sequence Count

def sequence(num1, num2)
  1.upto(num1).map { |number| num2 * number }
end

#Grocery List

def buy_fruit(type)
  type.map { |item| [item[0]] * item[1] }.flatten
end

#solution 2

def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end