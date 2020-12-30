n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = Array.new(a.max+1, 0)
c = Array.new(a.max+1, 0)
n.times do |i|
  b[a[i]] += 1
end
b.size.times do |i|
  next if b[i]<2
  c[i] = b[i]*(b[i]-1)/2
end
sum = c.sum
n.times do |i|
  ans = sum - c[a[i]]
  t = 0
  if b[a[i]] <= 2
    t = 0
  else
    t = ((b[a[i]]-1)*(b[a[i]]-2))/2
  end
  puts ans + t
end
