#Lettercase percentage ratio

#input: string chars
#output: hash / values as percentages

#rules:
# method takes string, returns a hash that contains 3 enteries 
# assume the string will always contain at least one character

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_percentages(str)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end
  total = str.length
  counts.each {|key, value| counts[key] = (value.to_f / total.to_f) * 100 }
  counts
end

letter_percentages('abCdef 123')

#exercise solution
def letter_percentages(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  percentages = { lowercase: [], uppercase: [], neither: [] }
  characters = string.chars
  length = string.length

  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end

#Hashes are bit complex. If you pass a hash into a method, and then alter a value
#in that hash, that altered value will then continue to persis even outside that method



