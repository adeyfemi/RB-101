#Convert a String to a Number!
DIGITS = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
}

def string_to_integer(number_string)
  string_number_array = number_string.chars.map {|num| num = DIGITS[num]}

  value = 0
  string_number_array.each {|digit| value = 10 * value + digit}
  value
end

p string_to_integer('4321')

# => STEPS TO SOLVE THE PROBLEM:
  # => Make a CONSTANT hash
  # => convert number string into an array and iterate using chars and map
  # => change each character to a number by referencing the key
  # => calcualte the value by multiplying by the base number and adding the digit
  # => an incremental process but still works
  # => 10 * 0 + 4, 10 * 4 + 3

#Furhter Exploration
HEX_TO_NUMBER = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, 
  "6" => 6, "7" => 7, "8" => 8, "9" => 9,'A' => 10, 'B' => 11, 
  'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15 
}

def hexadecimal_to_integer(value)
  hexa_array = value.upcase.chars.map do |char|
    char = HEX_TO_NUMBER[char]
  end

  total = 0
  hexa_array.each { |digit| total = 16 * total + digit}
  total
end

p hexadecimal_to_integer('4D9f')

# #Alternative methods
# def string_to_integer(str)
#   arr = ("0".."9").to_a
#   str.chars.map.with_index{|v, i| arr.index(v) * 10 ** (str.size - i - 1)}.sum
# end

# ###############################################################################
# def string_to_integer(num_str)
#   str_to_int = (0..9).map { |i| [i.to_s, i] }.to_h # creates hash map

#   mult = 1
#   num_str.chars.map { |char| str_to_int[char] }.reverse.map { |i| i *= mult; mult *= 10; i}.sum
# end