# => question 3 - return value of the hash key :three
arr = [{one: '1', two: 2}, [{four: 5, three: 6}, :three], :three, {2=>:two, 3=>:three}]

arr[1][0][:three]

# => question 4 = apple juice to orange juice
todo_lists = [{id: 1, list_name: 'Groceries', todos: [{ id: 1, name: 'Bread', completed: false },{ id: 2, name: 'Milk', completed: false }, { id: 3, name: 'Apple Juice', completed: false}]}]

p todo_lists[0][:todos][2][:name]

# => question 5 - set value for :completed to true for todos in Homework list
todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  },
  {
    id: 2,
    list_name: 'Homework',
    todos: [
      { id: 1, name: 'Math', completed: false },
      { id: 2, name: 'English', completed: false }
    ]
  }
]

ok = todo_lists[1].each do |list_key, list_value|
  if list_key == :todos
    list_value.each { |todo| todo[:completed] = true }
  end
end

p ok


# => question 6 last three lines
a = 'hi'
english_greetings = ['hello', a, 'good morning']

greetings = {
  french: ['bonjour', 'salut', 'allo'],
  english: english_greetings,
  italian: ['buongiorno', 'buonasera', 'ciao']
}

greetings[:english][1] = 'hey'

greetings.each do |language, greeting_list|
  greeting_list.each { |greeting| greeting.upcase! }
end

puts a
puts english_greetings[1]
puts greetings[:english][1]

# => question 7 

[['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end

# The return value of the String#upcase method is returned by 
# the inner block to the inner call to Array#map; this adds 
# the uppercase string to a new array in place of the lowercase version. 
#This new array is returned by the outer block to the outer call to Array#map. 
#this call to map also creates a new array, populated by the new inner arrays (containing the uppercase strings), 
# which it then returns.

#Q8-10

order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]


customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]


all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]

fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
  # rest of data
]

