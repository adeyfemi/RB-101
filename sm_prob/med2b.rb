#Now I know my ABCs

#collection of spelling blocks has two letters per block

blocks = %(B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M)

#input: string
#output: boolean

#rules:
#method returns true if word passed in as an argument can be spelled from list
# return false otherwise
#only one of the letters from each block can be used from any given block
# block can only be used once

#algorithm
# => first thing we want to consider is how we should organize our blocks
# => we want to be able to check each block easily to make sure that a valid block word
# => is passed to this method

# use an array of two letter strings. use this array to check that word passed in
# doesn't contain two letters from any block. 
# we also want to make sure that no block is used more than once. If both those 
# conditions are met, then we have a vaid block word

#string#count method allows us to count the number of occurences of a collection of
# characters
#The collection of characters will be each block we want to check - If we find a count
# of 2 or greater, then we know that either both block characters contained within the string,
# or that a character from the current block occurs more than once in that string

BLOCKS = %(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end


#student solution
BLOCKS = [
  ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
  ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'],
  ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'],
  ['Z', 'M']
]

def block_word?(str)
  blocks_used = []
  str.upcase.chars.each do |chr|
    BLOCKS.each { |block| blocks_used << block if block.include?(chr) }
  end

  blocks_used == blocks_used.uniq
end

