#1
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

#times block returns the initial integer

#2
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

#times still returns the initial integer, but nothing happens with return value
#10 is reflected as the implicit return of count_sheepn because its the last line evaluated

#3
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep #invoked the action to reflect nil as the output of return)

#4
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number


