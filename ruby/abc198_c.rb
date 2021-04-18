r, x, y = gets.split.map &:to_f
d = (x*x + y*y)**0.5
ans = (d/r).ceil
ans += 1 if d < r
puts ans