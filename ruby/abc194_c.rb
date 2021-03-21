n, *a = $<.read.split.map &:to_i
b = [0]*401
a.each do |x|
  b[x+200] += 1
end
ans = 0
(0..400).each do |x|
  (x..400).each do |y|
    ans += b[x]*b[y]*(x-y)**2
  end
end
puts ans