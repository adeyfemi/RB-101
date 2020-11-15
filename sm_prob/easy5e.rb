# Clean up the words

# => input:
# string of words with non-alphabetic characters

# => output:
# string 

# => rules:
# write a method that returns the string 
# all non-alphabetic characters replaced by spaces
# if one or more non-alphabetic characters occur in a row, have only one space

# => Algorithm 
# define the letters in the alphabet
# convert the strings into an array using split
# iterate over each word in the array using each calling the word
# iterate over each word using each and check to see if the letter is in the alphabet
# if it is include in a new array
# if it is not create a space and reduce the spaces by 1
# return the completed array with just the strings with one space replacing non-alphabet terms

def cleanup(words)
  clean_arr = ''
  words.chars.map do |letter|
    if /[a-z]/.match(letter)
      clean_arr << letter
    else
      clean_arr << ' ' 
    end
  end
  clean_arr.squeeze(' ')
end

cleanup("---what's my +*& line?") == ' what s my line '

#Using regular expressions
def cleanup(str)
  str.gsub(/\W+/, ' ')
end

#Alternative solution 1
ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end
  clean_chars.join
end


#Alternative solution 2
def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end

# using the gsub call, it replaces all non-alphanumeric characters in text
# with a space, then squeezes out all of the duplicate spaces
#(The squeeze call could be replaced by another gsub call, but squeeze is easier to understand at a glance)
# the expression /[^a-z]/ is a regex that matches any character that is not an upper or lower case letter
# The /i part is what makes this expression case insensitive. gsub replaces all
#characters in text that match the regular expression in the 1st argument with the value in the 2nd argument
#both solutions returns a new string object. 
