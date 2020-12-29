#1個置換 -> N-1個からGCD_MAXを計算
n = gets.to_i
a = gets.split(" ").map(&:to_i)
l = Array.new(n+1, 0)
r = Array.new(n+1, 0)
n.times do |i|
  l[i+1] = l[i].gcd(a[i])
  r[n-i-1] = r[n-i].gcd(a[n-i-1])
end
ans = 0
n.times do |i|
  ans = [l[i].gcd(r[i+1]), ans].max	#累積GCDのMAXを更新
end
puts ans