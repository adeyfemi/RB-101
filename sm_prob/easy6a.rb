# Cute angles

#input: floating point number
#output: string 

#rules:
# write a method that takes a floating point number (represents an angle between 0 and 360 deg)
# returns a string that represents that angle in degrees, minutes and seconds 
# you should use a (), single quote to represent minutes and double quote to represent seconds
# a degree has 60 minutes
# a minute has 60 seconds

#algorithm
#1. define a method called dms and parameter is a number 
#2. create CONSTANT variables to calculate the degrees, minutes and seconds
#3. The first number is the degrees and the second number is the minutes using divmond


DEGREE_SYMBOL = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(angle)
  total_seconds = (angle * SECONDS_PER_DEGREE)
  degree, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE) 
  format(%(#{degree}#{DEGREE_SYMBOL}%02d'%02d), minutes, seconds)
end

dms(254.6)


# Alternative Solution

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(254.6)