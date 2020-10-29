n, m = gets.split.map &:to_i
lm = 0
rm = n
m.times{
  l, r = gets.split.map &:to_i
  lm = l if lm < l
  rm = r if rm > r
  }
puts [rm-lm+1, 0].max