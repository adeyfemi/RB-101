#What century is That?
# => a method that takes a year and returns the century
# => return value should be a string that begins with century number and ends
# => with st, nd, rd, or th

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

#Notes from the example
# => Notice a pattern about a century - it is current year divided by 100 + 1
  # => unless it can be evenly divided by 100
# => next determine which suffix to append for century


#alternative solution
def century(year)
  suffixes = { 0=>'th', 1=>'st', 2=>'nd',3=>'rd', 4=>'th', 5=>'th', 6=>'th', 7=>'th', 8=>'th', 9=>'th' }
  century = ((year - 1 ) / 100) + 1
  suffix = century % 10
  century.to_s.end_with?('11', '12', '13') ? "#{century}th" : "#{century}#{suffixes[suffix]}"
end

#alternative solution
def century(n)
  suffixes = %w(th st nd rd th th th th th th)
  century = ((n - 1) / 100) + 1
  if century.to_s.end_with?('11', '12', '13') then suffix = suffixes[0]
  else suffix = suffixes[century.digits.first]
  end
  century.to_s + suffix
end

