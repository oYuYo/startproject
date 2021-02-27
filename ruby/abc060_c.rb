n, t = gets.split.map &:to_i
a = gets.split.map &:to_i
ans = n*t
n.times do |i|
    ans -= t - (a[i]-a[i-1]) if a[i]-a[i-1]<t && i>0
end
puts ans