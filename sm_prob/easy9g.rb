# Name Swapping

#input: string
#output: string

#rules:
# a method that takes a frist name and a last name passed as argument
# returns a string that contains the last name, comma, space and the first name

def swap_name(string)
  string_arr = string.split
  "#{string_arr[-1]}, #{string_arr[0]}"
end

swap_name('Joe Roberts') == 'Roberts, Joe'

#alternaive solution
def swap_name(name)
  name.split(' ').reverse.join(', ')
end

