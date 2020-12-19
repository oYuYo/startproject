n = gets.to_i
a = gets.split(" ").map(&:to_i).sort.reverse
asum = Array.new(n+1, 0)
n.times do |i|
  asum[i+1] = asum[i] + a[i]
end
sum = 0
for i in 0..n-1
  x = asum[i+1] - a[i]*(i+1)
  sum += x
end
puts sum