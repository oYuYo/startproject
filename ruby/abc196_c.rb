n = gets.to_i
s = n.to_s.size
ans = 0
i = 1
while i.to_s.size*2 <= s
  ans += 1 if (i.to_s * 2).to_i <= n
  i += 1
end
puts ans