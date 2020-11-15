# Double Char (Part 1)

#input: string
#output: string

#rules:
# => write a method that takes a string, and returns a new string 
# => each character is doubled

#algorithm:
# => a method that takes a string as an argument
# => convert the string into an array of characters
# => iterate through the array using map and return a double of the character

def repeater(string)
  double_char = string.chars.map do |char|
    char * 2
  end
  double_char.join('')
end

def repeater(String)
  string.chars.map { |char| char * 2 }.join
end

repeater('Hello')
repeater('Good job!')
repeater('')

#alternative solution
def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

# => initialize a new string, then iterate through the original string...
# => while appending each character to the result 2 times.
# => Finally return the string
