n = gets.to_i
a = []
n.times do
  s, t = gets.split.map &:to_i
  a << [s, t-s, t]
end
a = a.sort_by{ |x, y, z| z }
ans = "Yes"
t = 0
a.each do |x, y, z|
  t += x
  ans = "No" if t > z
end
puts ans
