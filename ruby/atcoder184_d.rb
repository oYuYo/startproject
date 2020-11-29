a, b, c = gets.split(" ").map(&:to_i)
dp = Array.new(101){Array.new(101){Array.new(101, 0)}}
99.downto(0){ |i|
  99.downto(0){ |j|
    99.downto(0){ |k|
      next if i+j+k == 0
      dp[i][j][k] += (i*1.0)/(i+j+k) * (dp[i+1][j][k] + 1)
      dp[i][j][k] += (j*1.0)/(i+j+k) * (dp[i][j+1][k] + 1)
      dp[i][j][k] += (k*1.0)/(i+j+k) * (dp[i][j][k+1] + 1)
      }
    }  
  }
p dp[a][b][c]