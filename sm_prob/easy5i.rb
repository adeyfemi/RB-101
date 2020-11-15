#ddaaiillyy ddoouubbllee

#input: string
#output: new string

#rules:
# write a method that takes a string and returns a new string 
# new string should contain non-duplicative consecutive characters 

#algorithm:
# pass an argument to the method and call the method split
# iterate through each character in the string and pass to a new string variable
# check to see if letter is in the string, if yes next, if not add to the string

def crunch(word)
  count = 0
  new_word = ''
  word.split('').each do |char|
    char != new_word[(count - 1)] ? new_word << char : next
    count += 1
    break if count > word.size
  end
  new_word
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

#Alternative solution
def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end


# Review further exploration
