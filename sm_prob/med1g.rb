#Word to Digit

#input: string
#output: string 

#rules:
# method takes a sentence string as input
# returns same string with word version changed to string digits

NUMBERS = { '0': 'zero', '1': 'one', '2': 'two', '3': 'three', '4': 'four', 
            '5': 'five', '6': 'six', '7': 'seven', '8': 'eight', '9': 'nine'
          }

def word_to_digit(strings)
  string_array = strings.split

  new_string = string_array.map do |char|
    if NUMBERS.values.include?(char)
      NUMBERS.key(char)
    else
      char
    end
  end
  new_string
end

word_to_digit('Please call me at five five five one two three four. Thanks.')

#the four does not change because four is appended with a period sign. Better to use
# string substitution for the entire string to change the character to a number string

#exercise solution

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

#first, define a hash that serves as a dictionary for converting words to digits
#use gsub! method to replace all instances of each number word 
#use regex to look for a word in the string passed in and replace it with corresponding digit
#basically substituting words in a long string word

