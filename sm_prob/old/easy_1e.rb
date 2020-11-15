def reverse_sentence(word)
  word.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


#1 - first need to separate the substrings using #split and place in an array
#2 - to reverse the order of the words invoke #reverse on the array
#3 - invoke #join which joins every element in an array using the given argument as the delimiter
 