# Madlibs

#rules:
# create a simple mad-lib program that prompts for a noun, verb, adverb, adjective
# => and injects those into a story that you create

puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter a adjective:"
adjective = gets.chomp

puts "Enter a adverb:"
adverb = gets.chomp

sentence_1 =  "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 =  "The #{adjective} #{noun} #{verb} #{adverb} over the lazy dog."

puts [sentence_1, sentence_2].sample