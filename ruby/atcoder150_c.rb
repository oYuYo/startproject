n = gets.to_i
m = (1..n).to_a
a = m.permutation(n).to_a
p = gets.split.map &:to_i
q = gets.split.map &:to_i
puts (a.index(p) - a.index(q)).abs