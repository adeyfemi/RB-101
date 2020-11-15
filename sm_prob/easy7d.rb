# Swap Case

#input: string
#output: string

#rules:
# => a method that takes a string as arg
# => returns new string -> 1) uppercase is lowercase, 2) lowercase is uppercase
# => all other characters should be unchanged
#do not use String#swapcase

def swapcase(words)

  new_word = words.chars.map do |char|
    if /[a-z]/.match(char)
      char.upcase
    elsif /[A-Z]/.match(char)
      char.downcase
    else
      char
    end
  end
  new_word.join('')
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


#Altenrative solution

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

