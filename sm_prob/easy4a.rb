#Short Long Short
def short_long_short(string1, string2)
  if string1.size < string2.size
    "#{string1}#{string2}#{string1}"
  elsif string1.size > string2.size
    "#{string2}#{string1}#{string2}"
  end
end

p short_long_short('abc','defgh') == "abcdefghabc"
p short_long_short('abcde','fgh') == "fghabcdefgh"
p short_long_short('','xyz') == "xyz"


#clarity is more important than density