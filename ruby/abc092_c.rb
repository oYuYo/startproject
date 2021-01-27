n = gets.to_i
a = gets.split.map &:to_i
a = [0] + a + [0]
sum = [0]
a.each_cons(2){|x, y| sum << ((x-y).abs + sum[-1])}
ans = 0
(1..n).each do |i|
  x = (a[i+1]-a[i-1]).abs - ((a[i+1]-a[i]).abs + (a[i]-a[i-1]).abs)
  puts sum[-1]+x
end