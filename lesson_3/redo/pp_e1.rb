#Practice Problems Easy 1

numbers = [1,2,2,3]
numbers.uniq

puts numbers

# solution: 1 2 2 3
# numbers.uniq returned a new Array object with unique elements but did not modify the numbers object
# the puts method calls to_s on its argument, and that's why you see the output like above
# had the last line been p numbers instead, output would have been [1,2,2,3] because
# => p method calls inspect on its argument, which gives a different formatting on the output
# another way to get the array output is puts numbers.inspect

# question 2
#1. != should be used during a comparison to execute a condition - means not equals 
#2. !user_name is not user_name
#3. words.uniq!: this is a destructive method and object referenced is mutated 
#4. ? before: likely a teneary operator for flow control
#5. ? after: this part of the method name and not Ruby syntax. Don't know what it is doing, depends on the implementation
#6. !! before: comparison operator that evaluates to true (turns an object into boolean equivalent)

# question 3
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.gsub!('important', 'urgent')

# question 4

numbers = [1,2,3,4,5]

numbers.delete_at(1)
# this will remove index number 1: [1,3,4,5]
numbers.delete(1)
# this will remove the number 1: [2,3,4,5]

# while both methods operate on the contents of the referenced array and modify it in place
# (rather than just returning a modified version of the array) these methods do NOT have the usual !
# at the end of the method name for "modify in place" method names.

# question 5

(10..100).include?(42)
(10..100).cover?(42)

# question 6
famous_words = "seven years ago..."

#a.
"Four score and " + famous_words
#b.
"Four score and " << famous_words
#c.
famous_words.prepend("Four score and ")

# question 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

# question 8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.select {|key, value| key == 'Barney' }.to_a.flatten!

flintstones.assoc("Barney")







