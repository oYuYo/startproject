n, k = gets.split.map &:to_i
a = gets.split.map &:to_i
s = 0
for i in 0..k-1
  s += a[i]
end
(k).upto(n-1){ |i|
  t = (s-a[i-k]) + a[i]
  puts t>s ? "Yes" : "No"
  s = t
  }