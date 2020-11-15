#Alphabetical Numbers

#input: array
#output: array

#rules:
#method that takes an array of integers between 0 and 19
#returns an array of those integers sorted based on the English words for each number

#Algorithm:
#1. create a hash with key as english word and value as the number
#2. iterate through the number array and match the value to a key in the hash
#3. if value matches, place the key (english word) in a new array
#5. sort by the alphabetical order of the english word
#4. remap the array and replace with the value of the english words (key)


#create a hash with key representing the integer number 
#iterate through an array using each and match to the value of the key selected
#append suffix to the end of the teen numbers 
#order the names based on alphabetical order


NUMBER_WORDS = {"zero": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5, "six": 6,
"seven": 7, "eight": 8, "nine": 9, "ten": 10, "eleven": 11, "twelve": 12, "thirteen": 13,
"fourteen": 14, "fifteen": 15, "sixteen": 16, "seventeen": 17, "eighteen": 18, "nineteen": 19 }


def alphabetic_number_sort(array)
  number_array = []
  ordered_array = []
  array.each {|num| number_array << NUMBER_HASH.key(num)}
  number_array.sort.each {|char| ordered_array << NUMBER_HASH[char] }
  ordered_array
end

p alphabetic_number_sort((0..19).to_a)

#alternative solution

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end
