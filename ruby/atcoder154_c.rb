n = gets.to_i; s = gets.split(" ").map &:to_i
puts s.uniq.size == n ? "YES" : "NO"