def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11,12,13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

#alternatives
def century(year)
  suffixes = { 0=>'th', 1=>'st', 2=>'nd',3=>'rd', 4=>'th', 5=>'th', 6=>'th', 7=>'th', 8=>'th', 9=>'th' }
  century = ((year - 1 ) / 100) + 1
  suffix = century % 10
  century.to_s.end_with?('11', '12', '13') ? "#{century}th" : "#{century}#{suffixes[suffix]}"
end

def century_number(year)
  year % 100 == 0 ? year / 100 : (year / 100) + 1
end

def century(year)
  num = century_number(year)
  case num % 100
  when 11, 12, 13
    num.to_s + 'th'
  else
    case num % 10
    when  1
      num.to_s + 'st'
    when  2
      num.to_s + 'nd'
    when  3
      num.to_s + 'rd'
    else
      num.to_s + 'th'
    end
  end
end

