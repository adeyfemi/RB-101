#List of Digits

def digit_list(num)
  num.to_s.chars.map do |x|
    x.to_i
  end
end

puts digit_list(12345) == [1,2,3,4,5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3,7,5,2,9,0]
puts digit_list(444) == [4,4,4]

#alternative 
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

#convert a number to a list of its digits
#First, conver the number to a string
#split it into an array of numeric characters
#Enumerable#map (&:to_i) is shorthand for: something.map {|char| char.to_i}




