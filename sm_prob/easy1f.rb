# #Reverse It (part 2)

#string with one or more words
#returns the string with words that contain five or more characters reversed
#space included only when more than one word is present

def reverse_words(string)
  string = string.split
  string_array = []

  string.each do |item|
    if item.length >= 5
      string_array << item.reverse
    else
      string_array << item
    end
  end
  string_array.join(' ')
end 

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')


#alternative
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

#when given a string or an array, and asked to evaluate:
# => reach for an iterator
# separate each word in a string with #split
# iterate using #each
# count number of characters using #size or #length(string method)
# join the words together and return the desired string 


# a = 'Walk around the block'

# a = 'professional'

# a = a.split

# string_array = []

# a.each do |item|
#   if item.length >= 5
#     string_array << item.reverse
#   else
#     string_array << item 
#   end
# end

# p string_array.join(', ')