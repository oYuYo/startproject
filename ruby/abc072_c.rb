_, *a = $<.read.split.map(&:to_i)
a.push 0
ans = 0
(a.size-1).times do |i|
  if i+1==a[i]
    a[i], a[i+1] = a[i+1], a[i]
    ans += 1
  end
end
puts ans