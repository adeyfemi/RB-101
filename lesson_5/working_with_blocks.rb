#Example 1
[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end

#Example 2
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end

#Example 3
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

#Example 4
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

#Example 5
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

#Example 6
[{ a: 'ant', b: 'elephant'}, {c: 'cat'}].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

#Example 7
arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end

#See notes

#Example 8
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item   
      item > 13
    else
      item.size < 6
    end
  end
end

#Example 9
[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      binding.pry
      element3.size > 0
    end
  end
end

#Example 10
[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1   
      el + 1
    else                    
      el.map do |n|
        n + 1
      end
    end
  end
end 



