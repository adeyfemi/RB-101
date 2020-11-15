# Convert a String to a Signed Number!
DIGITS = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
}

def string_to_integer(number_string)
  string_number_array = number_string.chars.map {|num| num = DIGITS[num]}

  value = 0
  string_number_array.each { |digit| value = 10 * value + digit }
  value
end

#Alternative Method
def string_to_signed_integer(string)
  if string[0] == '-' || string[0] == '+'
    new_integer = string_to_integer(string[1..-1])
    string[0] == '-' ? -new_integer : new_integer
  else
    string_to_integer(string)
  end
end

#Suggested Solution
def repeating_symbol(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else string_to_integer(string)
  end
end

def string_to_signed_integer(string)
  repeating_symbol(string)
end

# => The [1..-1] means to extract the characters starting at index 1 of the string
# => (the second character) and ending with the last character (index -1)
# => First determine the conditional statements to remove the symbols
# => Apply the changes to the new string and then run the string to number method



# p string_to_integer('4321')
p  string_to_signed_integer('4321')  
p string_to_signed_integer('-570')
# p  string_to_signed_integer('+500')