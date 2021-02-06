n = gets.to_i
s = []
n.times{ s << gets.chomp}
ans = 1
s.reverse.each do |x|
  if x=="OR"
    ans += 2**n
  end
  n -= 1
end
puts ans