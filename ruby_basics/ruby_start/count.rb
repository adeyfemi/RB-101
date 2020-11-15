# require "pry"

# counter = 0

# loop do
#   counter += 1
#   binding.pry #should come before the break in orde to use for testing
#   break if counter == 5
# end

(1..10)                 .tap { |x| p x }   
 .to_a                  .tap { |x| p x }   
 .select {|x| x.even? } .tap { |x| p x }   
 .map {|x| x*x }        .tap { |x| p x }   



 array =  [1,2,3]

 mapped_array = array.map {|num| num + 1}
 mapped_array.tap {|value| p value}

 mapped_and_tapped = mapped_array.tap {|value| p 'hello'}
 mapped_and_tapped