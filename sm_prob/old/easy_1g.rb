def stringy(size)
  numbers = []
  
  size.times do |x|
    number = x.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101' 

#alternative 
def stringy(num)
  numbers = []

  num.times do |i|
    if i % 2 == 0
     number = 1
    else
      number = 0
    end
    numbers << number
  end

  numbers.join

end