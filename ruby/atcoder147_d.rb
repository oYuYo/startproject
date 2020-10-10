#XORは他の桁に影響しない
#そこで全てのAiにおけるk桁目のbitの'1'と'0'の数を数える
#その後2^kを乗算すると、解が求められる
n = gets.to_i
a = gets.split.map &:to_i
mod = 10**9+7
sum = 0
#Ai < log2(2^60) = 60桁
60.times{ |k|
  x = y = 0
  a.size.times{ |i|
    if (a[i]>>k&1 == 1)
      x += 1
    end
  }
  y = (x * (n-x)) % mod
  sum += (y * (2**k)) % mod
}
puts sum % mod