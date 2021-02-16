n = gets.to_i
a = gets.split.map &:to_i
c = a.count{|x| x%4==0 }
d = a.count{|x| x%2==0 && x%4!=0 }
n -= (d-1) if d > 1
puts c+1>=n-c ? "Yes" : "No"