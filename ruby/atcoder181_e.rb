n, m = gets.split.map &:to_i
h = gets.split.map(&:to_i).sort
w = gets.split.map(&:to_i).sort
sl = Array.new(n, 0)
sr = Array.new(n, 0)

2.step(n-1,2){ |i|
  sl[i] = sl[i-2] + h[i-1] - h[i-2]
  sr[i] = sr[i-2] + h[n-i+1] - h[n-i]
  }
#p sl
#p sr
ans = 1/0.0
w.each do |a|
  i = h.bsearch_index{ |o| o > a } || n

  if i.even?
    min = sl[i] + sr[n-i-1] + (h[i] - a).abs
  else
    min = sl[i-1] + sr[n-i] + (a - h[i-1]).abs
  end
  ans = min if ans > min
end

puts ans
