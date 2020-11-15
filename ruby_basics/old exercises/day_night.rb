def time_of_day(daylight)
  if daylight
    puts "It's day time!"
  else
    puts "It's nighttime!"
  end
end


daylight = [true, false].sample
time_of_day(daylight)

