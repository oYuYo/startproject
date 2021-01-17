n, m = gets.split.map &:to_i
a = gets.split.map &:to_i
x = []
m.times do
  s, t = gets.split.map &:to_i
  x.push([s, t])
end
x.sort!		#sort because of DAG
dp = [-10**10]*(n+1)
ans = 0
x.each do |i, j|
  #[0, dp[i]].max shows to stop at town when choose dp[i]
  dp[j] = [dp[j], a[j-1]-a[i-1]+[0, dp[i]].max].max
end
puts dp.max