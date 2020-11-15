#Unlucky Days

#input: year integer
#output: integer

#rules:
#method returns the # of Friday the 13ths in any given year by an argument
# assume the year is greater than 1752

require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end


#why 12.times method 
#read up on the date class

