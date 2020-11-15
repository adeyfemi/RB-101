# Multiply All Pairs

#input: array
#output: array

def multiply_all_pairs(arr1, arr2)
  product = []
  count = 0

  until count == arr1.size
    arr2.each do |item|
      product << arr1[count] * item
    end
    count +=1
  end
  product.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2])

#Alternative Method
def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
endf