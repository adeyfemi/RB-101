def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  en
end


puts caps("hello world")
puts caps("hello")