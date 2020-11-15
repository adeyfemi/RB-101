#Letter Counter (Part 1)

#input: string
#output: hash

#rules:
# method that takes a string with one or more space separated words
#returns a hash that show the number of words of different sizes

#Algorithm
#1. take a string of words and convert the structure into an array
#2. create a new array to include the size of the words
#3. iterate throught the words and push the word size or length into an array
#3. create a new hash structure to capture the length elements
#4. iterate over the uniq elements using each and count the number of occurences

def word_sizes(words)
  length_arr = []
  hash_words = {}
  words.split(' ').each {|word| length_arr << word.length }
  length_arr.uniq.each do |element|
    hash_words[element] = length_arr.count(element)
  end
  hash_words
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

#Alternative solution
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

#Refactored version
def word_sizes2(string)
  count_hash = Hash.new(0)
  string.split(' ').each {|word| count_hash[word.length] += 1 }
  count_hash
end 


