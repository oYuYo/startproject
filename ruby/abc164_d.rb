s = gets.chomp.split("").map(&:to_i)
a = Array.new(2019, 0)
a[0] = 1	#他は2個以上でカウントするのに対して、0は別扱い
d = 1
t = ans = 0
s.reverse.each do |x|
  t = (d*x + t)%2019
  ans += a[t%2019]
  a[t%2019] += 1
  d = (d * 10)%2019
end
puts ans