#Interval Scheduling Problem
n = gets.to_i
inter = []
n.times{
    inter.push(gets.split(" ").map(&:to_i))
}
inter = inter.sort_by {|xi| xi[1]}	#終端時刻でソート
res = 0
current_end_time = 0
for i in 0..n-1
    next if inter[i][0] < current_end_time
    res += 1
    current_end_time = inter[i][1]
end
puts res