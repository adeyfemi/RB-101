#After Midnight (Part 1)

# => takes a time using minute based format and returns the time of day in 24 hr format
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(minutes)
  hours, minutes = minutes.divmod(MINUTES_PER_HOUR) 
  days, hours = hours.divmod(HOURS_PER_DAY)
  format('%02d:%02d', hours, minutes)
end

#Suggested Solution
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

#Alternative Method
# def time_of_day(number)
#   total_minutes = number % 1440
#   hours, minutes = total_minutes.divmod(60)
#   format('%02d:%02d', hours, minutes)
# end

# def time_of_day(integer)

#   hours = ((integer.abs) / 60) % 24
#   minutes = (integer.abs) % 60

#   if integer < 0
#     format("%02d:%02d", 23 - hours, 60 - minutes)
#   else
#     format("%02d:%02d", hours, minutes)
#   end
# end

p time_of_day(0)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4321)

#Three operations
# => Ensure the time difference is in the range of 0..MINUTES_PER_DAY by using
# => % operator (it computes the remainder of dividing the left side x right)
# => Use divmod to break the time difference down into hours and minutes
# => Forma the results with Kernel#format. Each %02d produces a 2-digit #...
# => with leading zeros as needed