n, q = gets.split.map &:to_i
s = gets.chomp
ssum = Array.new(n, 0)
(n-1).times do |i|
  if s[i]=="A" && s[i+1]=="C"
    ssum[i+1] += 1
  end
  ssum[i+1] += ssum[i]  
end
q.times do
  l, r = gets.split.map &:to_i
  puts ssum[r-1]-ssum[l-1]  
end