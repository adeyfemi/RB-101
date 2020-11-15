#Repeat Yourself

def repeat(word, num)
  num
  while num > 0
    puts word
    num -= 1
  end
end

repeat('Hello', 3)

#alternative solution
def repeat(string, number)
  number.times do
    puts string
  end
end

repeat('Hello', 3)