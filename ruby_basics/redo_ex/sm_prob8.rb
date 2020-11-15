#Sum of Sums

#input: integer
#output: sum of integers

#rules:
# => method that takes an array as args
# => returns sum of the sums of each leading subsequence for the array
# => assume array contains one number at least

def sum_of_sums(array)
  sum = 0
  total = 0

  array.each do |num|
    sum += num
    total += sum
  end
  total
end

sum_of_sums([3, 5, 2])

#alternative solution
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

#Madlibs

print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample