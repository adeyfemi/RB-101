#Neutralizer

#neutralize method that removes negative words from sentences. However, it fails to 
#remove all of them. What exactly happens?

def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'boring',
    'dull',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')

#a good way to see what is happening is to inspect word and words for each iteration
#of the block on lines 3-5. In the following example we decided to simply insert a few
#print statements. We also use Enumerable#each_with_index instead of each, in order to
#see which index of the words array we are at

#mutation of the array caused it to skip boring - delete mutates the array

def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| negative?(word) }
  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')

#while iterating over an array, avoid mutating it from within the block. Instead you can use 
#the Array methods select, reject or reject!

#another solution
def mutating_reject(array)
  i = 0
  loop do
    break if i == array.length

    if yield(array[i]) # if array[i] meets the condition checked by the block
      array.delete_at(i)
    else
      i += 1
    end
  end

  array
end

