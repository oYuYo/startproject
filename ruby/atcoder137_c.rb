n = gets.to_i
s = []
n.times{ |i|
  s[i] = gets.split(//).map(&:chomp).sort.join
}
s.sort!
ans = 0
c = 1
(s.size-1).times{ |i|
  if s[i] == s[i+1]
    c += 1
  else
    if c > 0
      ans += c*(c-1)/2
    end
    c = 1
  end
}
ans += c*(c-1)/2
puts ans