#Longest Sentence

#rules:
# write a program that reads the content of a text file 
# prints the longest sentence in the file based on number of words
# sentences may end with periods, exclamation points, or question marks
# any sequence of characters that are not spaces or sentence ending characters 
# => treated as a word 
# print the number of words in the longest sentence 

sentences = File.read("text.txt")
split_sen = sentences.split(/\.|\?|!/).map { |full_sen| full_sen }

def longest_sentence(words)
  long_sen = words.max { |a, b| a.length <=> b.length } # this returns a string
  p "The longest sentence is #{long_sen}" 
  p "words long: #{long_sen.split.length}"
end

longest_sentence(split_sen)

#exercise solution
text = File.read("text.txt")
sentences = text.split(/\.|?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"

# #student solution
# def longest_sentence(str)
#   sentence = str.split(/[\.\!\?]/).sort_by{ |sen| sen.split.size }.last
#   print "The longest sentence is #{sentence.split.size} words long: #{sentence}"
# end

#student solution
File.open('text.txt', 'r') do |f|
  longest = f.read.split(/\.|\?|\!/).max { |a, b| a.length <=> b.length }
  puts "Amount of words: #{longest.split.length}."
  puts longest
end
