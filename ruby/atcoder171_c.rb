n = gets.to_i
a = ('a'..'z').to_a
ans = ""
while n > 0
  n -= 1
  ans += a[n%26]
  n = n / 26
end
puts ans.reverse
