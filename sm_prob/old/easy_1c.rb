#List of Digits

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

puts digit_list(12345) == [1,2,3,4,5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3,7,5,2,9,0]
puts digit_list(444) == [4,4,4]

#alternative and idiomatic process

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

#to covert a number to a list of its digits, first convert the number to a string
#then split it into an array of numeric characters. Enumerable#map comes to the rescue
#(&:to_i is the same as something.map {|char| char.to_i})