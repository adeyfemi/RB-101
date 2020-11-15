#Next Featured Number Higher than a Given Value

#input: integer
#output: integer

#rules:
# Method that takes a single integer 
# returns the next featured number that is greater than the argument
# issue an error if there is no next featured number

#featured number = odd number that is a multiple of 7
# all the digits must be unique

def featured(num)
  divisor = num / 7
  count = 1
  total = 0

  until (count > divisor) && (total.odd? && total > num) 
    total = count * 7
    count += 1
  end

  loop do
    number_chars = total.to_s.split('')
    return total if number_chars.uniq == number_chars
    total += 7
    break if num >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements'
end

featured(997)

#exercise solution
def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end