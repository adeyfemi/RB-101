# Counting up

#input: integer
#output: array

#rules:
# => a method that takes an integr as argument
# returns an array of all integrs in sequence between 1 and the argument
# assume will always be a valid integer greater than 0

def sequence(num)
  1.upto(num).map do |char|
    char
  end
end

sequence(-5)
sequence(3)
sequence(1)

#alternaive solutions
def sequence(number)
  (1..number).to_a
end

