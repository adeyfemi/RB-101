#Double Char (Part 2)

#input: string
#ouput: string

#rules:
# => write a method that takes a string
# => return a new string where every consonant is doubled
# => vowels, digits, punctuation, and whitespace should not be doubled

#algorithm:
# => a method that takes a string as an argument
# => convert the string into an array and iterate through the array using map
# => if vowel, symbol, and white space, return once

def double_consonants(string)
  doubled = string.chars.map do |char|
    if char =~ /[aeiou]/
      char
    elsif char =~ /[[:punct:][:digit:][:blank:]]/
      char
    else
      char * 2
    end
  end
  doubled.join
end
  
double_consonants('String')
double_consonants("Hello-World!")
double_consonants("July 4th")
double_consonants('')


#alternative solution
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end


# main difference from part 1 is that we need to check the character to see if it is a consonant
# account for the uppercase consonants as well, so convert each character to lowercase for the test


