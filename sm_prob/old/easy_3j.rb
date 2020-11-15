def palindromic_number?(num)
  num = num.to_s
  return true if num.reverse == num
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

#alternative

def palindromic_number?(number)
  palindrome?(number.to_s)
end
