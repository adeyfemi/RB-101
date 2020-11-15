#The End is Near But Not Here

#input: string
#output: string

#rules: 
# => a method that takes a string
# => returns the next to last word in the string passed an argument
# => words are any sequence of non-blank characters
# => input string will always have at least two words

#Algorithm:
#1. invoke a method and pass in a string as arg
#2. call the method split on the words 
#3. iterate through the array and return the next to last word

def penultimate(string)
   chosen_word = ''
   new_word = string.split

   new_word.each do |word|
    if word == new_word[-2]  
      chosen_word << word
    end
  end
  chosen_word
end

penultimate('last word')

#Altenative Solution
def penultimate(words)
  words_array = words.split
  words_array[-2]
end

#Futher Exploration
def middle_word(string)
  words = string.split
  middle = words.size / 2
  if words.size.zero?
    string
  elsif words.size.odd?
    words[middle]
  else
    words[middle - 1] + ' ' + words[middle]
  end
end

puts middle_word('The middle of this sentence is this.') == 'this'
puts middle_word('Bob') == 'Bob'
puts middle_word('last word') == 'last word'
puts middle_word('Launch School is great!') == 'School is'
puts middle_word('') == ''

def middle_word(string)
  string.split.size.even? ? "No middle!" : string.split[string.split.size / 2]
end

# Test cases:
p middle_word("There can be only one.")         
p middle_word("Except when it's even.")         
p middle_word("Supercalifragilistic.")          
p middle_word("")  


def middle_word(string)
  words = string.split
  index = words.length / 2
  case
    when words.length <= 1 then string
    when words.length.even? then words[index - 1]
    when words.length.odd? then words[index]
  end
end

p middle_word('one two three')