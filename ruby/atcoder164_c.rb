n = gets.to_i
s = Array.new(n, "")
n.times{ |i|
  s[i] = gets.chomp
}
s.uniq!
puts s.size