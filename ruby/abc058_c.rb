gets
*a = $<.read.split.map &:chomp
(puts a.join.chars.sort.join; exit) if a.size == 1
h = {}
a.flatten.join.chars.each do |x|
  h[x] ||= 0
  h[x] += 1
end
e = h.select{|_, v| v>1}.to_a.flatten.select.with_index{|x, id| id.even?}.sort
ans = []
e.each do |x|
  min = 100
  a.each{|y| min = [min, y.count(x)].min }
  ans << x * min
end
puts ans.join