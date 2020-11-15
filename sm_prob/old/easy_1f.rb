def reverse_words(word)
  if word.split.size >= 5
    word.reverse.join(' ')
    end
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')


#correct response
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end
  words.join(' ')
end


puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')


#1 - when given a string or an array, and asked to evaluate each character or element, first instict should be to reach for an iterator.
#2 - the goal is to iterate over a given string and check each word for the number of characters it contains
#3 - if it has five or more characters then we'll reverse the word



