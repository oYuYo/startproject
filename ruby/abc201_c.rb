ans = 0
s = gets.chomp
b = [0] * 10
for j in 0..9
  b[j] = 1 if ['o'].include?(s[j])
end
for i in 0..9999
  x = i.to_s.rjust(4, '0');
  c = 1
  d = b.dup
  x.chars.each do |t|
    c = 0 if s[t.to_i] == 'x'
    d[t.to_i] = 0
  end
  ans += c if d.sum == 0
end
puts ans