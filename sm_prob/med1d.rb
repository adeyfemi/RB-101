#1000 Lights

#Initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) {|number| lights[number] = "off" }
  lights
end

#return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == 'on'}.keys
end

#toggle_every_nth_light(lights, nth)
def toggle_every_nth_lights(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

#Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  binding.pry
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_lights(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(10)

#start by calling toggle_lights with an argument (the number of lights)
#toggle_lights immediately calls initialize_lights, which creates and returns a Hash that
#represents all lights with a current state of 'off'. toggle_lights subsequently uses
# 1.upto(lights.size) method call to iterate over the lights as many times as needed
# uses toggle_every_nth_lights to toggle first every light, then every other light,
#then every 3rd light, and so on until we have iterated over all of the lights '1000' times

#call on_lights to select the lights that are still on. use Hash#select, which returns 
# a new Hash that contains only the on lights, and then, we chain Hash#keys method
#which returns an array with only the keys of the Hash

#on_lights method uses _position as a parameter name since we don't use the parameter,
#but want to show what it represents, Using an undescore at the beginning of a parameter name
#is a common convention to show that a parameter isn't used
