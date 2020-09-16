#
#累積和を求めておくと、計算量を減らせる
#
n, m, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
aa = [0]
a.each do |i|
  aa.push(i + aa[-1])
end
bb = [0]
b.each do |j|
  bb.push(j + bb[-1])  
end
#
#A本から1冊読むたびに、B本から1冊づつ減らす
#
ans = min = 0
j = bb.length - 1
(n+1).times{ |i|
  if aa[i] > k
    break
  end
  while (aa[i] + bb[j]) > k
    j -= 1
  end
  min = i + j
  if ans < min
      ans = min
  end
}
puts ans