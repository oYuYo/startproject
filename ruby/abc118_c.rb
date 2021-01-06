gets
a = gets.split.map &:to_i
g = a[0]
a.each {|x| g = g.gcd x }
p g