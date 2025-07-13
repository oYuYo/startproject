#https://www.momoyama-usagi.com/entry/info-algo-dp#i
#6, 4, 8の3枚のカードから, 何枚か選んで10にできるか
x = [6, 4, 8]
n = x.size
m = 10
dp = Array.new(n) { Array.new(m+1, 0) }
(0..m).each do |i|
  dp[0][i] = x[0] if x[0]<=i
end

(1...n).each do |i|
  (0..m).each do |j|
    t = dp[i-1][j]
    if x[i] > j
      dp[i][j] = t if x[i]>j\
    else
      t2 = dp[i-1][j-x[i]] + x[i]
      if t2 >= dp[i-1][j]
        dp[i][j] = t2
      else
        dp[i][j] = t
      end
    end
  end
end
p dp[n-1][m]
