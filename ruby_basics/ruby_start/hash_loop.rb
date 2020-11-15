family = {dad: "Abiodun", mom: "Funmi", sister: "Bunmi", brother: "Ikeade"}

family.each do |k, v|
  puts k
end

family.each do |k, v|
  puts v
end

family.each do |k, v|
  puts "#{k}: #{v}"
end