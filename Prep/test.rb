NUMBERS = [1,2,3]

def test
  puts NUMBERS.inspect
end

test


#sentence split
#1 - correct
def string_lengths(sentence)
  strings = sentence.split #split turns it into a comma array

  strings.map { |chars| chars.length } #for each item note the number of characters
end

string_lengths('To be or not to be')

#2 - not correct
def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size #this adds the string characters into the new array called length
  end
end

string_lengths('To be or not to be')

#3 - correct
def string_lengths(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end

string_lengths('To be or not to be')

#4 - not correct
def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end

string_lengths('To be or not to be')


#Truthiness
if false 
  puts 'hi'
else
  puts 'goodbye'
end




