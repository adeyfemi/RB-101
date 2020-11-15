family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

extended_family = {friends: ["x", "y", "z"]}

puts family.merge(extended_family)
puts family

puts family.merge!(extended_family)
puts family

