n, k = gets.split(" ").map &:to_i
puts [(n- k*(n/k)).abs, (n - k*((n/k)+1)).abs].min