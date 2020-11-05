mod = 998244353
n, k = gets.split.map &:to_i
s = []
k.times{
  l, r = gets.split.map &:to_i
  s.push([l, r])
  }
dp = Array.new(n+1, 0)
dp[1] = 1
dpsum = Array.new(n+1, 0)
dpsum[1] = 1
for i in 2..n
  for j in 0..k-1
    li = i - s[j][1]
    ri = i - s[j][0]
    next if ri < 0
    li = [li, 1].max
    dp[i] += dpsum[ri] - dpsum[li-1]
    dp[i] %= mod
  end
  dpsum[i] = dpsum[i-1] + dp[i]
  dpsum[i] %= mod
end
puts dp[n]

