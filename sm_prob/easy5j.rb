# Bannerizer

#input: string
#output: string in a box

#rules: write a method that will take a short line of text, and print it within a box
# => assume the input will always fir in the terminal window

#algorithm:
# create a rule to define the horizontal line across the screen
# create a rule to define the empty_line
# the horizontal and empty rule should be be increased by a factor of 2
# output the horizontal rule
# output empty line
# the message should be placed in the middle of the box
# output empty line
# output horizontal rule

def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

