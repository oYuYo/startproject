k, n = gets.split(" ").map &:to_i
a = gets.split(" ").map &:to_i
s = Array.new(n-1, 0)
0.upto(a.length - 1){ |i|
  if i != a.length - 1 
    s[i] = a[i+1] - a[i]
  else
    s[i] = (k + a[0]) - a[i]
  end
}
s.delete_at(s.index(s.max))
p s.sum