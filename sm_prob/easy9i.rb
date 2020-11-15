# Grade book

#input: integers
#output: string

#rules:
# => a method that determines the average of the three scores passed to it
# returns a letter value associated with the grade

def grade(average)
  case
  when average > 90 
    return 'A'
  when average > 80
    return 'B'
  when average > 70
    return 'C'
  when average > 60
    return 'D'
  else
    return 'F'
  end
end

def get_grade(score1, score2, score3)
 average = (score1 + score2 + score3) / 3
 grade(average)
end

get_grade(95, 90, 93)
get_grade(50,50,95)


#alternaive solution

def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end


#the case method above is basically - when (90..100).include?(result)
