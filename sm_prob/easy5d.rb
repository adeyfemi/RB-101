#Letter Swap

# understand the problem:
# => input: method that takes a string of words
# => output: method returns a string in which the first and last letters
# => of every word are swapped

#test cases:
# => swap('Oh no') == 'ho on'
# => swap('Abcde') == 'ebcdA'

#edge cases:
# => no empty strings and string contains one word and spaces

#Algorithm
# => input a string of words in a method
# => convert the string of words into an array
# => iterate over each array using each and flip the first and last letters of the word
# => return the words flipped

def swap(words)
  flipped_word = words.split(' ').map do |word| 
    word[0], word[-1] = word[-1], word[0]
    word
  end
  flipped_word.join(' ')
end

p swap('Oh what a wonderful day it is')


#Alternative Solution
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

# => pay attention to the return value




