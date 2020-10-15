n = gets.to_i
a  = gets.split.map &:to_i
b = []
n.times{ |i|
  b[a[i]-1] = i+1
}
puts b.join(" ")