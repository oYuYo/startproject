n, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
ae = Array.new(n+1, 0)
i = 0
a.each do |x|
  ae[i+1] = ae[i] + x*(x+1.0)/(2*x)
  i += 1
end
ans = 0
(n+1).times do |i|
  next if i < k
  ans = ae[i]-ae[i-k] if ans < ae[i]-ae[i-k]
end
puts ans