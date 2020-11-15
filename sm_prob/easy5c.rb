#After Midnight (Part 2)

#Requirements:
# => write two methods:
# 1. take time of day in 24 hour format and return # of minutes before
# 2. and after midnight
# 3. Both methods should return a value in the range 0..1439

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  minutes = 0
  baz = time_str.split(':').map {|char| char.to_i}
  minutes = baz[0] * MINUTES_PER_HOUR + baz[1]
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end


p after_midnight('12:34')
p before_midnight('12:34')



#ALternative Solution
# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end






#Steps to complete
# => method to convert the string to digits 
# => 

