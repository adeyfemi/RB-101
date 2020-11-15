#- String#to_i method converts a string of numeric characters (including an optional plus or minus sign)
# - to an Integer. String#to_i and the Integer constructor(Integer()) behave similarly.

def str_to_int(string)
 digit_hash = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}
 total = 0
 num_array = string.split("").reverse
 num_array.length.times do |i|
   num_value = digit_hash[num_array[i]]
   num_value_base_ten = num_value * (10**i)
   total += num_value_base_ten
   end
   total
 end

 p str_to_int('119')

#alternative solution
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end


#hexadecimal_to_integer
DIGITS = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0,
           'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 
           'E' => 14, 'F' => 15 }

def hexadecimal_to_integer(hex)
  arr = hex.upcase.reverse.chars
  (0...hex.size).map { |i| DIGITS[arr[i]] * 16**i }.reduce(:+)
end
  