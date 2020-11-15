# How long are you?

#input: string
#output: array 

#rules:
# => a method that takes a string as argument
# => returns an array that contains every word from the string
# => append a space and the word length
# => assume that words in the string are separated by exactly one space and any 
# non-space characters is a word

def word_lengths(string)
  string.split(' ').map { |item| item << " #{item.size}"}
end


word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []


#alternaive solutions
def word_lengths(string)
  words = string.split

  words.map do |word|
    word + ' ' + word.length.to_s
  end
end

# note: Array#map will return a new array, of the same size as the caller array, with
# each element replaced according to the return value of the block. 