n, k = gets.split(" ").map(&:to_i)
(puts n; exit) if k==0
a = n.to_s.split("").map(&:to_i)
f = 0
k.times do
  g1 = a.sort.reverse.join.to_i
  g2 = a.sort.join.to_i
  f = g1-g2
  a = f.to_s.split("").map(&:to_i)
end
puts f