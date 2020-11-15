#Reverse Sentence

#reverse_sentence method should return a new string with words of its arguments
# in reverse order, without using any Ruby built-in reverse methods

#wrong code
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = words[i] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')

#right code
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')

# Both String and Array have a + method. The former concatenates two strings, latter 
# concatenates two arrays. On line 13, attempt to concatenate string and array. 
#To resolve, turn words[i] into a one-element array shown, alternatively can use unshift

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i]) # another way of reversing 
    i += 1
  end

  reversed_words.join(' ')
end

