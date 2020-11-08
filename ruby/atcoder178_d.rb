mod = 10**9+7
s = gets.to_i
dp = [0] * (s+1)
dp[0] = 1
for i in 1..s
  for j in 0..i-3
    dp[i] += dp[j]
    dp[i] %= mod
  end
end
p dp[s]