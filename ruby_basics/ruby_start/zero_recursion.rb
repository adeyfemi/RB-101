def zero(number)
  if number <= 0
    puts number
  else
    puts number
    zero(number - 1)
  end
end

zero(6)
