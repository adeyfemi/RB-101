#Selection

alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    selected_chars << current_char    
  end

  counter += 1
  break if counter == alphabet.size
end

p selected_chars

#Transformation
fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0

loop do
  current_element = fruits[counter]

  transformed_elements << current_element + 's'   

  counter += 1
  break if counter == fruits.size
end

transformed_elements

#finding vowels
def select_vowels(str)
  selected_chars = ''
  counter = 0

  loop do
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == str.size
  end

  selected_chars
end


#Hashes
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'brocolli' => 'Vegetable'
}

def select_fruit(produce_list)
  selected_fruits = {}
  counter = 0
  produce_keys = produce_list.keys

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end
  selected_fruits
end

p select_fruit(produce)

Transformation
def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1,4,3,7,2,6]
double_numbers(my_numbers)

#note that the method returned a new array with every element doubled
#original array is not mutated

#to mutuate
def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end

  numbers
end

#rather than returning a new array, this method returns a reference to the mutated original array
#lines 116 and 117 can be shortened to 1 line: numbers[counter] = numbers[counter] * 2
# This, in turn, can be further condensed to numbers[counter] *= 2


#Transformation to check odd?

def double_odd_numbers(numbers)
  double_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  double_numbers
end


def double_odd_numbers(numbers)
  double_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    double_numbers << current_number

    counter += 1
  end

  double_numbers
end

my_numbers = [1,4,3,7,2,6]
p double_odd_numbers(my_numbers)


Define a general selection criteria
def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    # used to be current_value == 'Fruit'
    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end

    counter += 1
  end

  selected_produce
end


#More flexible methods example
def multiply(my_numbers, multiplier)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == my_numbers.size

    current_number = my_numbers[counter]
    multiplied_numbers << current_number * multiplier 

    counter += 1
  end

  multiplied_numbers
end

my_numbers = [1,4,3,7,2,6]
p multiply(my_numbers, 3)

#returning a character
def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end

#can continue to chain string methods on the return value

#The for LOOP

alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in alphabet.chars
  puts char
end

#You can think of loop or for as interchangeable syntax

