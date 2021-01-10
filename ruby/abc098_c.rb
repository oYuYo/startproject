n = gets.to_i
s = gets.chomp.split("")
(puts 0; exit) if s.uniq == 1
w = [0] * (n+1)
e = [0] * (n+1)
n.times do |i|
  x = 0
  x = 1 if s[i]=="W"
  e[i+1] = e[i] + x
end
n.times do |i|
  x = 0
  x = 1 if s[n-1-i]=="E"
  w[n-1-i] = w[n-i] + x
end
ans = 10**6
(n+1).times do |i|
  m = e[i] + w[i]
  ans = [ans, m].min
end
puts ans
p e
p w
