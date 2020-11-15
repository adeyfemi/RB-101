def palindrome?(string)
  return true if string.reverse == string
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end


real_palindrome?('madam') == true
real_palindrome?('Madam') == true         
real_palindrome?("Madam, I'm Adam") == true
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false


# - String#delete is a method that takes arguments that look like regular expressions and then
# deletes everything formed by the intersection of all its arguments. 
#first delete everything that isn't a letter or digit then pass the result to original palindrome?

#read documentation on String#delete and String#count String#gsub