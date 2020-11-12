n, w = gets.split.map &:to_i
a = []
b = []
n.times{ |i|
  a[i], b[i] = gets.split.map &:to_i
  }
dp = Array.new(n+1) { Array.new(w+1, 0) }
for i in 0..n-1
  for j in 0..w
    if j - a[i] >= 0
      dp[i+1][j] = [ dp[i][j - a[i]] + b[i], dp[i][j] ].max
    else
      dp[i+1][j] = dp[i][j]
    end
  end
end
p dp[n][w]

