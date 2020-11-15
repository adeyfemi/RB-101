# write a method that determines and returns ASCII string value passed
# in as argument 
# The ASCII string value is the sum of the ASCII values of every 
# character in the string
def ascii_value(str)
  str.chars.map {|char| char.ord }.sum
end

ascii_value('Four Score')

# write a method that takes a time using minute based format and returns time of day
# in 24 hour foramt (hh:mm)

# time of day is number of minutes before midnight 
# positive - then after midnight
# negative - before midnight
HOURS_IN_A_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_IN_A_DAY * MINUTES_PER_HOUR

def time_of_day(mins)
  day, minutes = mins.divmod(MINUTES_PER_DAY)
  hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

time_of_day(0)

# write two methods that each takes time of day in 24 hour format 
#and return minutes before midnight and after midnight
def after_midnight(time_str)
  hours, minutes = time_str.split(':').map {|num| num.to_i }
  total_minutes = (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

after_midnight('12:34')
before_midnight('00:00')
after_midnight('24:00')

# write a method that takes this string 
# returns a string in which the first and last letters of every word are swapped
def swap(str)
  new_str = str.split(' ').map do |char|
    char[0], char[-1] = char[-1], char[0]
    char # returns the word swapped
  end
  new_str.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Given a string - write a method that returns the string with all non-alphabets
# =>  replaced / more than one in a row should have only one space
def cleanup(str)
  str.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

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

# write a method that takes a string with one or more words
# returns a hash that shows the number of words sizes
def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) do |char, hsh|
    hsh[char.size] += 1
  end
end

word_sizes('Four score')

# write a method to exclude non-letters when determining word size
def word_sizes(str)
  new_word.split.each_with_object(Hash.new(0)) do |char, hsh|
    clear_word = char.delete('^A-Za-z')
    hsh[clear_word.size] += 1
  end
end

word_sizes('Four score.')

# write method that takes an array of integers 
# returns an array of those integers sorted based on english word

WORDS = %w(zero one two three four five six seven eight nine
           ten eleven twelve thirteen fourteen fifteen sixteen 
           seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  arr.sort_by { |num| WORDS[num] }
end

alphabetic_number_sort((0..19).to_a)


# write a method that takes a string and returns a new string
# contains the value of the original string with all consecutive duplicate chars

def crunch(str)
  new_str = []

  str.chars.each do |char|
    new_str << char unless new_str.last == char
  end
  new_str.join
end

crunch('ddaaiillyy ddoouubbllee') 

# alternative

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

# write a method that will take a short string and print it in a box

def print_in_box(str)
  header = "-" * (str.length+2)
  side = " " * (str.length+2)

  puts "+#{header}+"
  puts "|#{side}|"
  puts "| #{str} |"
  puts "|#{side}|"
  puts "+#{header}+"
end

print_in_box('To boldly go where no one has gone before.')




