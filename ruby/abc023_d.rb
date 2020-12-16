#midを与えたときにmid以下でペナルティを抑えられるか -> 二分探索
n = gets.to_i
a = []
n.times do
  a.push(gets.split(" ").map(&:to_i))
end
left = 0; right = 1<<60
while (right - left) > 1
  mid = (right + left)/2
  flg = true
  t = Array.new(n, 0)
  for i in 0..n-1
    if mid < a[i][0]
      flg = false
    else
      t[i] = (mid - a[i][0])/a[i][1]	#t[i]秒で割らなければならない
    end
  end
  t.sort!
  for i in 0..n-1
    flg = false if t[i] < i		#t[i]秒がiを未満か?
  end
  if flg == true
    right = mid
  else
    left = mid
  end
end
puts right
