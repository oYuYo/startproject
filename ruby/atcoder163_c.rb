n = gets.to_i
x = Array.new(n, 0)
a = gets.split(" ").map &:to_i
a.length.times{ |i|
  x[a[i]-1] += 1  
}
puts x