name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# the method mutates permanently
# save_name is referencing name and any mutations to name
# be aware of pass by reference and pas by value