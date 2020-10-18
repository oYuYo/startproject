n = gets.to_i
h = gets.split(" ").map(&:to_i)
ans = max = 0
(n-1).downto(1){ |i|
  if h[i-1]>=h[i]
    max += 1
  else
    ans = max if ans < max
    max = 0
  end
  }
ans = max if ans < max
puts ans