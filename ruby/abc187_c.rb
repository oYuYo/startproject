a = []
sum = 0
n = gets.to_i
n.times do
  t1, t2 = gets.split(" ").map(&:to_i)
  t3 = t1+t2
  t4 = 2*t1+t2			#町iを回るたびに変動する票
  a.push([t1, t2, t3, t4])
  sum += t1
end
a = a.sort_by {|xi| -xi[3]} 	#t4でソート
ans = 0
sum1 = 0
n.times do |i|
  sum -= a[i][0]
  sum1 += a[i][2]
  ans += 1
  if sum < sum1
    puts ans
    exit
  end
end
puts ans