# Grocery List

#input: nested array
#output: array of strings

#rules:
# => a method which takes a grocery list of fruits with quantities
# => converts it into an array of correct number of each fruit

def buy_fruit(array)
  new_arr = []
  array.each do |sub_arr|
    sub_arr[1].times { new_arr << sub_arr[0] }
  end
  new_arr
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == 
["apples", "apples", "apples", "orange", "bananas","bananas"]

#alternative solution
def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end
