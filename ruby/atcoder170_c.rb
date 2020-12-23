n = gets.to_i
a = gets.split(" ").map(&:to_i)
max = a.max
b = Array.new(max+1, 0)
a.each do |x|
  x.step(max, x) do |y|
    b[y] += 1
  end
end
ans = 0
a.each do |x|
  ans += 1 if b[x] == 1
end
puts ans