#Palindromic Strings (Part 2)
def real_palindrome?(word)
  word = word.downcase.delete('^a-z0-9') 
  word == word.reverse
end

#alternative method
def palindrome?(word)
  word == word.reverse
end

def real_palindrome?(word)
  word = word.downcase.delete('^a-z0-9') 
  palindrome?(word)
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam") == true
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false


#Further Exploration - read String#delete and String#count