n = gets.to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i
sum = a.sum
n.times{ |i|
  if a[i] >= b[i]
    a[i] -= b[i]
  elsif a[i]+a[i+1] >= b[i]
    a[i+1] -= b[i]-a[i]
    a[i] = 0
  else
    a[i+1] = 0
    a[i] = 0
  end
  }
p sum - a.sum
