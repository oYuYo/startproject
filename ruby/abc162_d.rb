n = gets.to_i
s = gets.chomp
ans = s.count("R") * s.count("G") * s.count("B")
n.times do |i|
  (i+1).upto(n-1) do |j|
    k = 2*j-i
    next if s[i]==s[j] || s[j]==s[k] || s[k]==s[i]
    break if k>=n
    ans -= 1
  end
end
puts ans