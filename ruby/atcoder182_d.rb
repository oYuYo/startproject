n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
sum = [0] * (n+1)
n.times{ |i|
  sum[i+1] = sum[i] + a[i]
  }
s = 0
max = 0
smax = 0
t = 0
n.times{ |i|
  s += a[i]
  max = s if max < s
  smax = max+t if smax < max+t
  t += s
  }
p smax