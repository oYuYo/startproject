n, x = gets.split.map &:to_i
a = gets.split.map &:to_i
a.push(x).sort!
b = []
(a.size-1).times do |i|
  b.push(a[i+1]-a[i])  
end
g = b[0]
b.each do |x|
  g = g.gcd(x)
end
puts g