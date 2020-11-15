#ASCII String Value
def ascii_value(string)
  string.split('').map { |char| char.ord } 
  string.sum
end

#Suggested Solution
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

#Alternative Method
def ascii_value(string)
  string.chars.map(&:ord).sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
