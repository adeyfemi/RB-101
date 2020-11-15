#ASCII String Value

#input: string
#output: integer

#rules:
# => method that returns the ASCII string value 
# => ASCII string is the sum of the ASCII of every character in a string
# => use String#ord to determine ASCII

#algorithm:
# => convert string into array of characters
# => iterate through the array 
# => sum the individual number 

def ascii_value(string)
  total = 0
  string.chars.each {|char| total += char.ord }
  total
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

def ascii_value(string)
  string.chars.map(&:ord).sum
end

#After Midnight (part 1)

#input: integer
#output: string 

#rules:
# => method takes a time using minutes format
# => returns time of day in 24-hr format (hh:mm)
# => no Date and Time classes

#algorithm:
# => define hours
# => define minutes
# => define number of minutes in an hour
# => define numbe rof minutes in a day
# => return the hh:mm format

MINUTES = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = MINUTES * HOURS_IN_DAY

def time_of_day(mins)
  days, minutes = mins.divmod(MINUTES_IN_DAY)
  hours, minutes = minutes.divmod(MINUTES)
  sprintf("%02d:%02d", hours, minutes)
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

#After Midnight (Part 2)

#input: string hh:mm
#output: integer

#rules:
# write two methods that take a time of day in 24 hr format
# return the number of minutes before and after midnight 
# methodds should return a value in range of 0..1439

#algorithm:
# => define hours
# => define minutes
# => split the string by :
# => iterate and return minutes value
# => sum the minutes value

MINUTES = 60
HOURS = 24
MINUTES_IN_DAY = MINUTES * HOURS

def after_midnight(string)
  minutes = 0
  string.split(':').each_with_index do |num, idx|
    if idx == 0
      minutes += num.to_i * MINUTES
    elsif idx == 1
      minutes += num.to_i
    end
  end
  return 0 if minutes == MINUTES_IN_DAY
  minutes
end

after_midnight('24:00') 

# def before_midnight(string)
#   minutes = 0
#   string.split(':').each_with_index do |num, idx|
#     if idx == 0
#       minutes += num.to_i * MINUTES
#     elsif idx == 1
#       minutes += num.to_i
#     end
#   end
#   MINUTES_IN_DAY - minutes
# end

# alternative solution
def before_midnight(string)
  minutes = MINUTES_IN_DAY - after_midnight(string)
  return 0 if minutes == MINUTES_IN_DAY
  minutes
end

before_midnight('12:34') 

# curriculum solution
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end


#Letter Swap

#input: string
#output: string swapped

#rules:
# method that takes string and returns string
# => first and last letters of every word is swapped

# questions to ask:
# => can it be an empty string?
# => can it have other values alphanumeric, symbols?
# => will always contain at least one word?

#algorithm:
# => pass string as argument into a method
# => map the transformation of each word
# => index 0 and index -1

def swap(str_word)
  swap_str = str_word.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  swap_str.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'


def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

# Clean up the words

#input: string with chracters
#output: string with space

#rules:
# => lower case letters with non-alphabetic characters
# => method that returns string wiht all non-alphanumeric characters replaced by spaces
# => if one or more characters return in a row, only one space in the result
# => no consecutive spaces

#alogrithm:
# => pass in string as argument
# => iterate through the array and return only alphabets
# => delete spaces greater than 1

def cleanup(str)
  clean_str = str.chars.map do |char|
    /[a-z]/.match(char) ? char : " "
  end
  clean_str.join.squeeze(" ")
end

cleanup("---what's my +*& line?")

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

# the expression /[^a-z]/i is a regular expression that matches any character that
# is not an uppercase or lowercase letter. The /i part of the expression is
# => what makes this expression case insensitive. gsub replaces all characters in text
# => that match the regular expression in the 1st argument with the value in the 2nd argument

# question to ask: return a new string or the same string object

#Letter Counter (part 1)

#input: string
#output: hash

#rules:
# => method that takes a string with one or more spaces
# => returns a hash that shows the number of words of diff sizes
# => words = string of characters with no spaces as well

def word_sizes(str)
  str.split.each_with_object({}) do |word, hsh|
    if hsh.key?(word.size)
      hsh[word.size] += 1
    else
      hsh[word.size] = 1
    end
  end
end

word_sizes('Four score and seven.')

def word_sizes(str)
  str.split.map {|word| word.size}.sort.tally
end

#Letter Counter (part 2)
def word_sizes(str)
  str.split.each_with_object({}) do |word, hsh|
    clean_word = word.delete('^A-Za-z')

    if hsh.key?(clean_word.size) 
      hsh[clean_word.size] += 1
    else
      hsh[clean_word.size] = 1
    end
  end
end

word_sizes('Four score and seven.')

#Alphabetical Numbers

#input: array of integers
#output: array of integers

#rules:
# => method that takes an array between 0-19 
# => returns an array of integers sorted based on english words for each #

#algorithm:
# => 

WORDS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 
  4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 
  9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 
  14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 
  18 => 'eighteen', 19 => 'nineteen' }


def alphabetic_number_sort(arr)
  sorted_arr = []
  arr.each do |num|
    sorted_arr << WORDS[num]
  end
  sorted_arr.sort.map do |word|
    word = WORDS.key(word)
    word
  end
end

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

#ddaaiillyy ddoouubbllee

#input: string
#output: string

#rules:
# => a method that takes a string 
# => returns a new string that contains the value of original string
# => all duplicate characters collapsed into single character
# => cannot use #squeeze or #squeeze!

def crunch(str)
  crunched_str = []
  str.chars.each do |char|
    crunched_str << char unless crunched_str.last == char
  end
  crunched_str.join
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'

def crunch(str)
  crunched_str = str.chars.each_with_object([]) do |char, arr|
    arr << char unless arr.last == char
  end
  crunched_str.join
end

#Bannerizer

def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

#Spin Me Around in Circles

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world")


# => an array object is different from a string object
# => any mutation done on either or does not affect the other collection
# => as soon as we converted string into an array using #split method
# => it is no longer possible for us to get back the original object again
# => even just doing str.split.join("") returns a different object since you are splitting 
# => the string into an array and then joining that array back into a new string
# with the same sequence of characters but still, a different object

# => inside the spin_me method, str.split converts the string into an array
# => we call each method on array and reverse each word
# => original array gets mutated and now its values are ...

