# Delete vowels

# input: array of strings
# output: array of strings

# rules: method that takes an array of strings and returns an array of strings
# except with the vowels (a,i,e,o,u) removed

# algorithms:
# 1. define a method and pass in an array of strings as the parameter
# 2, split the array into individual strings 
# 3. iterate through the array and select only the consonants
# 4. return an array with the remainining consonants

# Key thing to remember is are we selecting or transforming. This is a transformation so map is better


def remove_vowels(arr)
  arr.map { |a| a.tr('aeiouAEIOU', '') }
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
remove_vowels(%w(green YELLOW black white))
remove_vowels(%w(ABC AEIOU XYZ))


# Alternative solutions

VOWELS = 'aeiouAEIOU'

def delete_vowels(str_arr)
  str_arr.map { |word| word.delete VOWELS }
end

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end