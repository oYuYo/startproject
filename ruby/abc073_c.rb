h = {}
gets.to_i.times do
  a = gets.to_i
  h[a] ||= 0
  h[a] += 1
end
ans = 0
h.each do |k, v|
  ans += 1 if v.odd?
end
puts ans