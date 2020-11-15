# Capitalize Words

#input: string
#output: string

#rules:
#1. write a method that takes a string argument
#2. returns a new string that contains the original word with the first character capitalized
#3. all other letters lowercased

#algorithm
#1. invoke a method and pass a string as an argument
#2. initalize an empty array called new_string
#3. call the method split on the string argument and call the method each to iterate
# =>  through each word
#4. push the capitalized version of the word into the empty array
#5. join the words and return the array

def word_cap(string)
  new_string = []

  string.split.each do |word|
    new_string << word.capitalize
  end
  new_string.join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'

#Alternative solution
def word_cap(words)
  words_array = words.split.map do |word|
    word.capitalize
  end
  words_array.join(' ')
end

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

#Futher exploration
# => Ruby provides String#capitalize method to capitalize strings. Without that method,
# how would you solve this problem?

