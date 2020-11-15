# Uppercase Check

#input: string
#output: boolean

#rules: 
# => a method that takes a string argument
# => return strue if all alphabetic characters are uppercase
# => false otherwise and should ignore non alphabets

#algorithm:
# => pass string as an argument to the method
# => check to see if all the characters.upcase if it is an alphabet character

CAPITAL_LETTERS = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def uppercase?(char)
  char.split.each.all? do |item|
    if item =~ /[A-Za-z]/ && CAPITAL_LETTERS.include?(item)
      true
    elsif item =~ /[[:blank:][:digit:]]/
      true
    else
      false
    end
  end
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true


#alternaive solution

def uppercase?(string)
  string == string.upcase
end

