_, *a = `dd`.split.map &:to_i
l = 1
a.each do |x|
  l = l.lcm x
end
ans = 0
l -= 1
a.each do |x|
  ans += l%x
end
puts ans
