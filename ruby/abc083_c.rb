x, y = gets.split.map &:to_i
ans = 0
(ans += 1; x *= 2) while x<=y
p ans