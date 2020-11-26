n, w = gets.split.map(&:to_i)
t = Array.new
n.times{ 
  t.push(gets.split.map(&:to_i))
  }
a = []
max = 0
n.times{ |i|
  a[t[i][0]] ||= 0
  a[t[i][0]] += t[i][2]
  a[t[i][1]] ||= 0
  a[t[i][1]] -= t[i][2]
  }
a.size.times{ |i|
  a[i-1] ||= 0
  a[i] ||= 0
  if 0 < i
    a[i] += a[i-1]
  end
  }
puts a.max > w ? "No" : "Yes"