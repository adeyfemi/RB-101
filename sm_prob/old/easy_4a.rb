def short_long_short(first, second)
  if first.size > second.size
    "#{second}#{first}#{second}"
  elsif second.size > first.size
    "#{first}#{second}#{first}"
  end
end


puts short_long_short('Femi', "Adeyinka") == "FemiAdeyinkaFemi"
puts short_long_short('Adeyinka', 'Femi') == "FemiAdeyinkaFemi"
puts short_long_short('', 'Femi') == "Femi"

#alternative solution
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end

#There are many ways to shorten the logic of the method. For example, we could use a ternary operator instead of if/else/end
#We could use string interpolation rathen concatenation - CLARITY IS MORE IMPORTANT THAN DENSITY
#There are also algorithms to use other than the if/else logic. For example we could put string1 and string2 in an array
# - then sort the array according to the element's lengyh. Then just concatenate the elements in the array, knowing that the shortest is first
