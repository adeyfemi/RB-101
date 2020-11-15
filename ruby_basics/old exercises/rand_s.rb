def name(names)
  return names
end

def activity(activities)
  return activities
end

def sentence(names, activities)
  "#{name(names)} went #{activity(activities)} today!"
end


names = ['Dave','Sally','George','Jessica'].sample
activities = ['walking','running','cycling'].sample

puts sentence(name(names), activity(activities))

#Alternative
def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))


#use Array#sample to grab a random value from the array and return it from the method
#pass methods as arguments into 'sentence' method to use the return value
