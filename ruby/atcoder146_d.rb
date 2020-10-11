def d(x)
  a = x.to_s
  return a.size
end
a, b, x = gets.split.map &:to_i
ans = 0
for i in 1..18
  n = (x - b * i)/a
#  puts "#{a*n + b*d(n)}  #{i}"
  if a*n + b*d(n) <= x
    ans = n
    break
  end
end
ans = 0 if ans < 0
puts ans > 10**9 ? 10**9 : ans