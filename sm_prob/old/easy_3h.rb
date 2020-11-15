def palindrome?(string)
  return true if string.reverse.downcase == string
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false
puts palindrome?("madam i'm adam") == false
puts palindrome?('356653') == true

#further exploration

def palindromic?(array)
  return true if array.reverse.flatten == array.flatten
end

puts palindromic?([2,4,4,2]) == true
