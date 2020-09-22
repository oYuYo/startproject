a, b, n = gets.split(" ").map &:to_i
x = b - 1
if x > n
  x = n
end
ans = 0
while x <= b && x <= n
  max = ((a*x)/b).floor - a*(x/b).floor
  if ans < max
    ans = max
  end
  x += 1
end
puts ans