#Letter Counter (Part 2)

#input: string
#output: hash

#rules:
# method that takes a string with one or more space separated words
#returns a hash that show the number of words of different sizes
#must exclude non-letters

#Algorithm
#1. take a string of words and convert the structure into an array
#2. create a new array to include the size of the words
#3. iterate throught the words and push the word size or length into an array
#3. create a new hash structure to capture the length elements
#4. iterate over the uniq elements using each and count the number of occurences
#5. if a non-alphabet is in word do not include in the counted words

def word_sizes(words)
  length_arr = []
  hash_words = {}
  words.gsub(/[^[:word:]\s]/, '').split(' ').each do |word| 
    length_arr << word.length
  end
  length_arr.uniq.each do |element|
    hash_words[element] = length_arr.count(element)
  end
  hash_words
end

#Refactored
def word_sizes(words)
  count_hash = Hash.new(0)
  words.gsub(/[^[:word:]\s]/, '').split(' ').each do |word|
    count_hash[word.length] += 1
  end
  count_hash
end


word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

