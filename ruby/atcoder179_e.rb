n, x, m = gets.split(" ").map &:to_i
a = []
ai = Array.new(m, 0)
a[0] = x
ai[a[0]] = 1
c = 0
0.step do |i|
  if ai[a[i]**2%m] > 0
    c = a.index(a[i]**2%m)
    break
  end
  a[i+1] = a[i]**2%m
  ai[a[i+1]] = 1
end
sum1 = sum2 = sum3 = 0
if n <= a.size
  puts a[0..n-1].sum
  exit
end
if c > 0
  sum1 = a[0..c-1].sum
end
n = n - c
d = a.size - c
sum2 = a[c..a.size-1].sum * (n/d)
n %= d
sum3 = 0
if n > 0
  sum3 = a[c..c+n-1].sum
end
#p "#{sum1} #{sum2} #{sum3}"
puts sum1 + sum2 + sum3