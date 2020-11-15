#What's wrong with the output?

arr = ["9", "8", "7", "10", "11"] # +1, +1, -3, +1
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

#solution 1
p(
  arr.sort do |x, y|
    y.to_i <=> x.to_i
  end
)

#solution 2
p arr.sort { |x, y| y.to_i <=> x.to_i }

#The main reason why the output was unexpected is because when you use do...end block, 
#p and arr.sort bind more tightly due to Ruby's precedence rules, so you are passing 
#the block to the return value of p arr.sort
