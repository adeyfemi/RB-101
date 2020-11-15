#Q1 what would you expect the code below to print out?

numbers = [1,2,2,3]
numbers.uniq

puts numbers

#numbers.uniq retuned a new array but does not modify the numbers object. 
#the puts method automatically calls to_s on its argument. p numbers would have been an array
#p numbers - calls inspect on its argument, giving a different format

#Q2 
#difference between ! and ? is that ! is a negative argument, ? asks if something exists
#1. != does not equal and use in a conditional
#2. !user_name - not user_name : oposite of their boolean equivalent
#3. permanent destruction of the vairable words
#4. it could be a modified version of a conditional call (? : is teneary operator)
#5. ? after something tries to determine if something exists
#6. !!user_name used to turn any object into their boolean equivalent

#3.
advice = "Few things in life are as important as house training your pet dinosaur."
change_word = advice.sub('important', 'urgent')
puts change_word

advice.gsub!('important','urgent')

#4
# numbers = [1,2,3,4,5]
# puts numbers.delete_at(1)
# p numbers

#note that the array is operated on directly and the return value of the call is the removed item 2

numbers = [1,2,3,4,5]
numbers.delete(1)
p numbers

#note that the array is operated on direcrtly and the return value of the call is the removed item 1

#while both methods operate on the contents of the referenced array and modify
# it in place(rather than just returning a modified version of the array) these methods do NOT
# have the usual ! at the end of the method name for "modify in place" method names

#5
42.between?(10,100)
(10..100).member?(42)
(10..100).include?(42)
(10..100).cover?(42)

#6
famous_words = "seven years ago..."
p "Four score and " << famous_words
"Four score and " + famous_words
famous_words.prepend("Four score and ")

#7 - unnested array
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# p flintstones.flatten

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.assoc("Barney")








