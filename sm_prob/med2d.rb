#Matching Parentheses

#input: string
#output: boolean

#rules:
# method takes a string as argument 
# returns true if all parantheses in string are balanced

SYMBOL = ['(', ')']

def balanced?(str)
  symbols = []
  str.chars.each do |char|
    SYMBOL.each do |sym|
      symbols << sym if SYMBOL.include?(char)
    end 
  end
  return false if symbols.first == ')' || symbols.last == '('
  return true if symbols.count('(') == symbols.count(')')
end

balanced?('What (is) this?')

#exercise solution

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

#keep track of this by keeping a tally of the total parentheses count 
# notice how 'break if parens < 0'- this is used to account for cases where a right 
# parentheses occurs before a left parentheses, and that right parenthesis doesn't
# have a matching left parenthesis

#testing pairs and tracking of the pairs 

#student solution
def balanced?(str)
  arr = str.chars.select { |char| char == '(' || char == ')' }
  return false if arr.first == ')' || arr.last == '('
  return true if arr.count('(') == arr.count(')')
  false
end