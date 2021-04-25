n = gets.to_i
s = gets.chomp.split("")
q = gets.to_i
f = 0
q.times do |i|
  t, a, b = gets.split.map &:to_i
  a -= 1
  b -= 1
  if t == 1
    if f == 1
      if a < n
        a += n
      else
        a -= n
      end
      if b < n
        b += n
      else
        b -= n
      end
    end
    s[a], s[b] = s[b], s[a]
  else
    f ^= 1
  end
end
s = s[n...2*n] + s[0...n] if f == 1
puts s.join