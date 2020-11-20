#ASCII String Value

#input:
# => string

#output:
# => integer 

#rules:
# => determine and return value of a string in ASCII form
# => string#ord can be used

def ascii_value(str)
  total = 0
  str.chars.map { |char| total += char.ord }
  total
end

#After Midnight (Part 1)

#input:
# => integer

#output:
#string in '00:00' format

#rules:
# => > 0 then time is after midnight
# => < 0 then time is before midnight
# => take time using minute based format and return 24 hr format

HOURS_IN_A_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_IN_A_DAY = HOURS_IN_A_DAY * MINUTES_PER_HOUR

def time_of_day(mins)
  day, minutes = mins.divmod(MINUTES_IN_A_DAY)
  hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
  "#{format("%.02d", hours)}:#{format("%.02d", minutes)}"
end

time_of_day(3)
time_of_day(-1437)

#After Midnight (Part 2)

#input:
# => string

#output:
# => integer

#rules:
# => write 2 methods and return the number of minutes before and after midnight

HOURS_IN_A_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_IN_A_DAY = HOURS_IN_A_DAY * MINUTES_PER_HOUR

def after_midnight(str)
  hours, minutes = str.split(':')
  total_minutes = (hours.to_i * MINUTES_PER_HOUR) + minutes.to_i
  (total_minutes - MINUTES_IN_A_DAY) < 0 ? total_minutes : 0 
end

def before_midnight(str)
  delta_minutes = MINUTES_IN_A_DAY - after_midnight(str)
  delta_minutes = 0 if delta_minutes == MINUTES_IN_A_DAY
  delta_minutes
end

after_midnight('12:34')
before_midnight('12:34')
before_midnight('24:00')

#Letter Swap

#input:
# => string

#output:
# => string

#rules:
# => return a string in which first and last letters of every word are swapped
# => assume every word contains one letter and string will contain at least one word

def swap(str)
  new_string = str.split
  new_string.map { |char| char[0], char[-1] = char[-1], char[0] }
  new_string.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'


#Clean up the words

#input:
# => strings

#output:
# => strings

#rules:
# => returns string with all of the non-alphabetic characters replaced by spaces
# => one or more non-alphabetic characters occur in a row, only have one space in the result

def cleanup(str)
  str.gsub(/[^a-zA-Z]/, ' ').squeeze(' ')
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

#solution 3

def cleanup(text)
  result = text.chars.each_with_object([]) do |char, arr|
    if ALPHABET.include?(char)
      arr << char
    else
      arr << ' ' unless arr.last == ' '
    end
  end
  result.join
end

#Letter Counter (part 1)

def word_sizes(str)
  result = Hash.new(0)
  str.split.each { |char| result[char.size] += 1 }
  result
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

#Letter Counter (part 2)

def word_sizes(str)
  cleaned_word = str.gsub(/[^a-zA-Z]/, ' ').squeeze(' ')
  result = Hash.new(0)
  cleaned_word.split(' ').each { |char| result[char.size] += 1 }
  result
end

#solution 2

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

cleaned_word = 'femi! adeyinka'.gsub(/[^a-zA-Z]/, ' ').squeeze(' ')


#Alphabetical Numbers

#input: 
# => array

#output:
# => array in order

#rules:
# => method takes an array of integers between 0 and 19 and returns array of integers sorted
# => based on english words for each number

ENGLISH_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 
  'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 
  'sixteen', 'seventeen', 'eighteen', 'nineteen']

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  arr.sort_by { |number| ENGLISH_WORDS[number] }
end


#ddaaiillyy ddoouubbllee

#solution 1
def crunch(str)
  result = []
  str.chars.each do |char|
    result << char unless result.last == char
  end
  result.join
end

#solution 2
def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end


#Bannerizer
def print_in_box(words)
  header = "+#{'-' * (words.size + 2)}+"
  sides = "|#{" " * (words.size + 2)}|"

  puts header
  puts sides
  puts "| #{words} |"
  puts sides
  puts header
end

print_in_box('togo')


