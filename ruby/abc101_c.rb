n, k = gets.split.map &:to_i
a = gets.split.map &:to_i
if k == n
  puts 1
  exit
end
ans = i = 0
while i < n
  if ans == 0
    i += k
    ans += 1
  else
    i += k -1
    ans += 1
  end
end
puts ans

