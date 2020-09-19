a, b, c= gets.gsub(".", " ").split(" ")
puts (a.to_i * (b.to_i*100 + c.to_i)/100)