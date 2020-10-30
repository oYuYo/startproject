n, k = gets.split.map &:to_i
ans = 0
1.upto(n){ |i|
  p = 0
  s = i
  if s >= k
    p += 1.0/n
  else
    cnt = 0
    while s < k
      s *= 2
      cnt += 1
    end
    p += 1.0/n * (1/2.0)**cnt
  end
  ans += p
  }
p ans