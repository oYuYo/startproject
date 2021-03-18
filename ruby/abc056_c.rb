x = gets.to_i
p (0..x).bsearch {|i| i*(i+1)/2 >= x }