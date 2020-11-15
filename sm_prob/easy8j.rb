# Get the Middle Character

#input: string
#output: string

#rules:
# => write method that takes a non-empty string
# => returns the middle character or characters of the argument
# => if odd length, return exactly one character
# => if even return exactly two characters

#algorithm:
# => method that takes string as an argument
# => call the method length or size to determine the size
# => if size is even return the two middle numbers
# => if size is odd return the one middle number

def center_of(string)
  char = ''
  if string.size.odd?
    char << string[string.size / 2]
  else
    char << string[(string.size / 2) - 1, 2]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

#alternative solution
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

# => the main difficulty here is understanding the difference between the index number
# and the character number. Take the string 'I love ruby', the third letter is lm but third
# index is o. This is becuase when counting chracters, you start at 1, but when counting index start at 0

# => First, determine the index of the center most character in the string
# => for even length strings, more complicated - need index for 2 characters, the character to the left of
# centerpoint, and the character to the right. 
# For a 4 character string, these are the 2nd and 3rd characters or index 1 or 2


require 'prime'

def is_prime?(num)
  num.prime?
end

(1..5).each do |n|
  p is_prime?(n)
end

