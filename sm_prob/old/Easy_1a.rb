#Repeat Yourself

def repeat(a,b=3)
  return a*b
end

repeat('Hello')

#correct answer
def repeat(string, number)
  number.times do
    puts string
  end
end

repeat('Hello',3)