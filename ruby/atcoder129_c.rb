mod = 10**9 + 7
n, m = gets.split.map &:to_i
a = $<.map &:to_i
dp = Array.new(n+1, 1)
m.times{ |i|
  dp[a[i]] = 0
  }
(n-2).downto(0){ |i|
  if dp[i] == 0
    dp[i] = 0
  else
    dp[i] = (dp[i+1] + dp[i+2]) % mod
  end
  }
puts dp[0]