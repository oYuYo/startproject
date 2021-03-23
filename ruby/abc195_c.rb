n = gets.to_i
s = (n.to_s.size - 1)/3
ans = 0
(1..s).each do |i|
  x = "999" * i
  ans += n - x.to_i
end
puts ans